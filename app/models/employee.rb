class Employee < ActiveRecord::Base
	
	belongs_to :user
	
	validates :no_id, presence: true
	validates :primer_nombre, presence: true, length: {minimum: 3}
	validates :primer_apellido, presence: true, length: {minimum: 3}
	validates :direccion, presence: true, length: {minimum: 7} 
	validates :telefono, presence: true, length: {minimum: 7}
	validates :salario, presence: true, length: {minimum: 3}

	has_attached_file :cover, styles: { medium: "300x300", thumb: "800x600" }
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

	def self.import(file)
	  spreadsheet = open_spreadsheet(file)
	  header = spreadsheet.row(1)
	  (2..spreadsheet.last_row).each do |i|
	    row = Hash[[header, spreadsheet.row(i)].transpose]
	    employee = find_by_id(row["id"]) || new
	    employee.attributes = row.to_hash.slice(*accessible_attributes)
	    employee.save!
	  end
	end

	def self.open_spreadsheet(file)
	  case File.extname(file.original_filename)
	  when ".csv" then Csv.new(file.path, nil, :ignore)
	  when ".xls" then Excel.new(file.path, nil, :ignore)
	  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
	  else raise "Unknown file type: #{file.original_filename}"
	  end
	end

end

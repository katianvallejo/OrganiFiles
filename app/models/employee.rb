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

end

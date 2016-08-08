class AddCoverToEmployees < ActiveRecord::Migration
  def change
  	add_attachment :employees, :cover
  end
end

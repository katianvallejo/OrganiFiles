class ChangeDataTypeForNoIdentificacion < ActiveRecord::Migration
  def change
    change_column :employees, :no_identificacion, :string
  end
end

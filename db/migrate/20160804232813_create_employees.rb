class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :no_identificacion
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :direccion
      t.string :telefono
      t.string :barrio
      t.date :fecha_ingreso
      t.date :fecha_salida
      t.float :salario

      t.timestamps null: false
    end
  end
end

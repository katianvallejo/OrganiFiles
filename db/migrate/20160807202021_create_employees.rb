class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :tipo_id
      t.string :no_id
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :direccion
      t.string :telefono
      t.string :eps
      t.string :afp
      t.float :salario
      t.date :fecha_ingreso
      t.date :fecha_retiro
      t.string :estado

      t.timestamps null: false
    end
  end
end

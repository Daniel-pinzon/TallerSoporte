class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :telefono
      t.string :login
      t.string :password
      t.string :email
      t.string :or

      t.timestamps
    end
  end
end

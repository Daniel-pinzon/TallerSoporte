class CreatePrestamos < ActiveRecord::Migration[7.0]
  def change
    create_table :prestamos do |t|
      t.datetime :feha
      t.integer :estado
      t.references :Usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end

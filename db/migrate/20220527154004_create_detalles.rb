class CreateDetalles < ActiveRecord::Migration[7.0]
  def change
    create_table :detalles do |t|
      t.integer :cantidad
      t.references :Prestamo, null: false, foreign_key: true
      t.references :Libros, null: false, foreign_key: true

      t.timestamps
    end
  end
end

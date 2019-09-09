class CreateTarifas < ActiveRecord::Migration[5.2]
  def change
    create_table :tarifas do |t|
      t.string :usuario
      t.string :plan
      t.string :tarifa
      t.string :descripcion

      t.timestamps
    end
  end
end

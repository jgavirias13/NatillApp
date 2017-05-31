class CreateGrupos < ActiveRecord::Migration[5.1]
  def change
    create_table :grupos do |t|
      t.string :nombre
      t.integer :ahorro_esperado
      t.integer :ahorro_actual
      t.references :user, foreign_key: true
      t.integer :cuota
      t.integer :cuota_actual

      t.timestamps
    end
  end
end

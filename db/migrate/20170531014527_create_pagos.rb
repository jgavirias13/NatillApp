class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.references :grupo, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :valor

      t.timestamps
    end
  end
end

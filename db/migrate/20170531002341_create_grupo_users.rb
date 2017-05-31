class CreateGrupoUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :grupo_users do |t|
      t.integer :user_id
      t.integer :grupo_id
    end
  end
end

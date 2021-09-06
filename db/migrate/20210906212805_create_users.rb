class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :rua
      t.string :bairro
      t.integer :numero
      t.string :complemento

      t.timestamps
    end
  end
end

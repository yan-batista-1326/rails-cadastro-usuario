class RemoveComplementoFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :complemento, :string
  end
end

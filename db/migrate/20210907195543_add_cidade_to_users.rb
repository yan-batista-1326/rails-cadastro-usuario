class AddCidadeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :cidade, :string
  end
end

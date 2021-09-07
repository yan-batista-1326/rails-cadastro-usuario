class AddEstadoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :estado, :string
  end
end

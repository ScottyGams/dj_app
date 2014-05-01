class AddBorderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :border, :string
  end
end

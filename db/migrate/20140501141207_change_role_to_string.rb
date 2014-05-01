class ChangeRoleToString < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.change :role, :string
    end
  end
 
  def down
    change_table :users do |t|
      t.change :role, :integer
    end
  end
end

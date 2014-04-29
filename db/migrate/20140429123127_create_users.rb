class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :location
      t.string :name
      t.string :password_digest
      t.text :image
      t.integer :role
      t.text :about

      t.timestamps
    end
  end
end

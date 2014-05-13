class CreateLogin < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :name
      t.text :email
      t.string :password
      t.integer :phone_number
    end
  end
end

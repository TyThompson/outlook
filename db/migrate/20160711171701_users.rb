class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
    end

    create_table :phonenumbers do |t|
      t.integer :user_id
      t.string :phonetype
      t.string :phonenumber
    end
  end
end

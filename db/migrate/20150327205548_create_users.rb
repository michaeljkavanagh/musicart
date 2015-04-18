class CreateUsers < ActiveRecord::Migration
  def change
    #drop_table :users
    create_table :users do |t|
      t.string :firstname
      t.string :surname
      t.string :email
      t.string :username
      t.string :role
      t.string :CCnumber
      t.string :CVV
      t.string :expiringDate
      t.string :CCowner

      t.timestamps null: false
    end
  end
end

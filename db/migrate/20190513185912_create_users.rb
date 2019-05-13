class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :e_mail
      t.integer :phone_number
      t.datetime :last_connection
      t.boolean :temp

      t.timestamps

    end
    
      
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :pwd 
      t.string :email
      t.string :gravatar
      t.timestamps null: false
    end
  end
end

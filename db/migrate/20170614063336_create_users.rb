class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :telephone
      t.string :email
      t.string :password
      t.boolean :is_admin
      t.text :remark 


      t.timestamps
    end
  end
end

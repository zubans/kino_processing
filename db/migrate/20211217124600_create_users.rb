class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :e_password
      t.string :salt
      t.integer :age

      t.timestamps
    end
  end
end

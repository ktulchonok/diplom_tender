class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :email
      t.string :address
      t.integer :number
      t.string :photo
      t.string :role
      t.string :local
      t.boolean :subscription
      t.string :status, default: 'inactivated'
      t.timestamps null: false
    end
  end
end

class CreateTenders < ActiveRecord::Migration
  def change
    create_table :tenders do |t|
      t.string :title
      t.text :content
      t.integer :amount
      t.string :currency
      t.belongs_to :area, index: true
      t.belongs_to :category, index: true
      t.belongs_to :user, index: true
      t.string :address
      t.string :status, default: 'actual'
      t.date :deadline
      t.timestamps null: false
    end
  end
end

class CreateTagToTenders < ActiveRecord::Migration
  def change
    create_table :tag_to_tenders do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :tender, index: true
      t.timestamps null: false
    end
  end
end

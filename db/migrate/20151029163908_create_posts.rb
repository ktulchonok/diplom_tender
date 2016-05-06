class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title_en
      t.string :title_ru
      t.text :text_en
      t.text :text_ru
      t.string :preview
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end

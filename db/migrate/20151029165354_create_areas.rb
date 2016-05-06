class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name_en, null: false
      t.string :name_ru, null: false
      t.timestamps null: false
    end
  end
end

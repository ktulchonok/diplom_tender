class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :tender, index: true
      t.timestamps null: false
    end
  end
end

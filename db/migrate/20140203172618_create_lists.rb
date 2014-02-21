class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :category
      t.text :body
      t.string :published

      t.timestamps
    end
  end
end

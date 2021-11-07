class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.text :name
      t.text :url
      t.integer :rating
      t.timestamps
    end
  end
end

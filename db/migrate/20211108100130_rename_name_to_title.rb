class RenameNameToTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookmarks, :name, :title
  end
end

class RemoveNumberFromChapter < ActiveRecord::Migration[7.2]
  def change
    remove_column :chapters, :number
  end
end

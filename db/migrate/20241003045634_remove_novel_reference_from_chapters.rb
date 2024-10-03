class RemoveNovelReferenceFromChapters < ActiveRecord::Migration[7.2]
  def change
    remove_reference :chapters, :novel, foreign_key: true
  end
end

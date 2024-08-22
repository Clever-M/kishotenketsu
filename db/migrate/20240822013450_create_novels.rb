class CreateNovels < ActiveRecord::Migration[7.2]
  def change
    create_table :novels do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end

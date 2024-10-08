class CreateChapters < ActiveRecord::Migration[7.2]
  def change
    create_table :chapters do |t|
      t.integer :number
      t.string :title
      t.text :body
      t.references :novel, null: false, foreign_key: true

      t.timestamps
    end
  end
end

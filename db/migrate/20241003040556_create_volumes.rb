class CreateVolumes < ActiveRecord::Migration[7.2]
  def change
    create_table :volumes do |t|
      t.string :title
      t.text :description
      t.references :novel, null: false, foreign_key: true

      t.timestamps
    end
  end
end

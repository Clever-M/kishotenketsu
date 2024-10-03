class UpdateChaptersTableToBelogToVolume < ActiveRecord::Migration[7.2]
  def change
    add_reference :chapters, :volume, null: false, foreign_key: true
  end
end

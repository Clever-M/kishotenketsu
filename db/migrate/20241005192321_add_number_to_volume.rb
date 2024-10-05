class AddNumberToVolume < ActiveRecord::Migration[7.2]
  def change
    add_column :volumes, :number, :integer, default: 0
  end
end

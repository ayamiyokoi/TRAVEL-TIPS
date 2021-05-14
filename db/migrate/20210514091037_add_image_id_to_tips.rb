class AddImageIdToTips < ActiveRecord::Migration[5.2]
  def change
    add_column :tips, :image_id, :string
  end
end

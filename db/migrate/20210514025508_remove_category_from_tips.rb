class RemoveCategoryFromTips < ActiveRecord::Migration[5.2]
  def change
    remove_column :tips, :category, :string
  end
end

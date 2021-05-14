class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :title
      t.string :category
      t.text :body
      t.string :username

      t.timestamps
    end
  end
end

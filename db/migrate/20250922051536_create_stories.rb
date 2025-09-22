class CreateStories < ActiveRecord::Migration[8.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :url
      t.text :description
      t.boolean :likes
      t.string :by

      t.timestamps
    end
  end
end

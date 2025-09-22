class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :story, null: false, foreign_key: true
      t.string :user_name
      t.text :description

      t.timestamps
    end
  end
end

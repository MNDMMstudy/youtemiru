class CreateYoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :youtes do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.boolean :report, null: false, default: "folse"
      t.boolean :indicate, null: false, default: "true"
      t.text :text, null: false

      t.timestamps
    end
  end
end

class CreateYoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :youtes do |t|
      t.integer :user_id, null: false, default: ""
      t.integer :youte_genre_id, null: false, default: ""
      t.boolean :report, null: false, default: "folse"
      t.boolean :indicate, null: false, default: "true"
      t.text :youte_text, null: false

      t.timestamps
    end
  end
end

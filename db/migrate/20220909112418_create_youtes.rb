class CreateYoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :youtes do |t|
      t.bigint :user_id, foreign_key: true, null: false
      t.references :youte_genre, foreign_key: true, null: false
      t.boolean :report, null: false, default: false
      t.boolean :indicate, null: false, default: true
      t.text :text, null: false
       t.string :star

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :comment_genre_id, null: false
      t.integer :youte_id, null: false
      t.boolean :report, null: false, default: "false"
      t.boolean :indicate, null: false, default: "true"
      t.text :comment_text

      t.timestamps
    end
  end
end

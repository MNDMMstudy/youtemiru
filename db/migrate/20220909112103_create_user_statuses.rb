class CreateUserStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_statuses do |t|
      t.integer :status, null: false, default: ""

      t.timestamps
    end
  end
end

class CreateUserStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_statuses do |t|
      t.string :status, null: false, default: ""

      t.timestamps
    end
  end
end

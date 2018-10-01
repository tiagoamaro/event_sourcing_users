class AddUserEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_events do |t|
      t.string :type, null: false

      t.jsonb :data, null: false
      t.jsonb :metadata, null: false

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :accepted
      t.references :vacancy, foreign_key: true

      t.timestamps
    end
  end
end
class AddDefaultToAcceptedOnConversations < ActiveRecord::Migration[5.2]
  def change
    change_column_default :conversations, :accepted, false
  end
end

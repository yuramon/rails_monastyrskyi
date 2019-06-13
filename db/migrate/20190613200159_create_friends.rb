# frozen_string_literal: true

class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.references :account, index: true, foreign_key: true
      t.references :friend_account, index: true

      t.timestamps null: false
    end

    add_foreign_key :friends, :accounts, column: :friend_account_id
    add_index :friends, %i[account_id friend_account_id], unique: true
  end
end

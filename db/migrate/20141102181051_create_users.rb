class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :session_token
      t.string :username, null: false

      t.timestamps
    end
    add_index :users, :email, uniqueness: true
    add_index :users, :session_token
    add_index :users, :username, uniqueness: true
  end
end

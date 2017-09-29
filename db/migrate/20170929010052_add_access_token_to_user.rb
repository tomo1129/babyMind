class AddAccessTokenToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :access_token, :string, :after => :encrypted_password
  end
end

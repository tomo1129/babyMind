class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ''
      t.column :access_token, :"CHAR(60)", null: false, default: ''
      t.datetime :token_expire, null: false
      t.column :refresh_token, :"CHAR(60)", null: false, default: ''

      t.timestamps
    end
  end
end

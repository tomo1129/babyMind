class CreateUserNames < ActiveRecord::Migration[5.1]
  def change
    create_table :user_names do |t|
      t.references :user, foreign_key: true
      t.references :relation, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

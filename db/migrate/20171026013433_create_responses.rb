class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.references :thread_bases, foreign_key: true
      t.text :response
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end

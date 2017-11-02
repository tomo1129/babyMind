class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.references :thread_base, foreign_key: true
      t.text :response
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateThreadBases < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_bases do |t|
      t.string :title
      t.text :body
      t.references :relations, foreign_key: true
      t.references :users, foreign_key: true
      t.references :questionnaires, foreign_key: true

      t.timestamps
    end
  end
end

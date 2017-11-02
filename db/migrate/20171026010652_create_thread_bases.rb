class CreateThreadBases < ActiveRecord::Migration[5.1]
  def change
    create_table :thread_bases do |t|
      t.string :title
      t.text :body
      t.references :relation, foreign_key: true
      t.references :user, foreign_key: true
      t.references :questionnaire, foreign_key: true

      t.timestamps
    end
  end
end

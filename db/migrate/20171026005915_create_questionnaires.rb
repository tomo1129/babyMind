class CreateQuestionnaires < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaires do |t|
      t.string :question, :limit => 1024
      t.references :questionnaire_type, foreign_key: true
      t.boolean :required

      t.timestamps
    end
  end
end

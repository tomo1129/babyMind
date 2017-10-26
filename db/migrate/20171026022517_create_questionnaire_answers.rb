class CreateQuestionnaireAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaire_answers do |t|
      t.references :thread_bases, foreign_key: true
      t.references :users, foreign_key: true
      t.references :questionnaires, foreign_key: true
      t.references :questionnaire_choices, foreign_key: true

      t.timestamps
    end
  end
end

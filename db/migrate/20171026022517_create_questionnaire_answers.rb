class CreateQuestionnaireAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaire_answers do |t|
      t.references :thread_base, foreign_key: true
      t.references :user, foreign_key: true
      t.references :questionnaire, foreign_key: true
      t.references :questionnaire_choice, foreign_key: true

      t.timestamps
    end
  end
end

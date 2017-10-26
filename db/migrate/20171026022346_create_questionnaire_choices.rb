class CreateQuestionnaireChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaire_choices do |t|
      t.references :questionnaires, foreign_key: true
      t.string :choice, :limit => 1024

      t.timestamps
    end
  end
end

class CreateQuestionnaireTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :questionnaire_types do |t|
      t.string :type

    end
  end
end

class QuestionnaireAnswer < ApplicationRecord
  belongs_to :threads
  belongs_to :users
  belongs_to :questionnaires
  belongs_to :choices
end

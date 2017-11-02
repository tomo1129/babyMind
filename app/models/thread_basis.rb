class ThreadBasis < ApplicationRecord
  belongs_to :relation
  belongs_to :user
  # belongs_to :questionnaires
end

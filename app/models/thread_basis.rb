class ThreadBasis < ApplicationRecord
  belongs_to :relations
  belongs_to :users
  belongs_to :questionnaires
end

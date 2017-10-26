class Response < ApplicationRecord
  belongs_to :thread_bases
  belongs_to :users
end

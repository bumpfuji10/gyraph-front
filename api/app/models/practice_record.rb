class PracticeRecord < ApplicationRecord
  belongs_to :user
  has_many :practice_details
end

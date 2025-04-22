class TimeEntry < ApplicationRecord
  validates :activity, presence: true
end

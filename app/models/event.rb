class Event < ApplicationRecord
  validates :name,:token,:page_id, presence: true
  belongs_to :page
end

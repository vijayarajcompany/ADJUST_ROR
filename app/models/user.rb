class User < ApplicationRecord
  validates :fname,:lname,:email,:ern_number, presence: true
end

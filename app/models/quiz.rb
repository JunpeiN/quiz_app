class Quiz < ApplicationRecord
  with_options presence: true do
    validates :question
    validates :answer
  end
end

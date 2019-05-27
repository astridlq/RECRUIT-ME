class Conversation < ApplicationRecord
  belongs_to :vacancy
  has_many :messages
end

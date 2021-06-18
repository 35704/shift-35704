class Shift < ApplicationRecord
  belongs_to :user
  has_many :commtents
end

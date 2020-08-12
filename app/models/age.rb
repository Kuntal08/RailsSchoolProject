class Age < ApplicationRecord
  belongs_to :classe

  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :age_from, presence: true
  validates :age_to, presence: true
  validates :date_as, presence: true
end

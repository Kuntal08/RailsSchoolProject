class Fee < ApplicationRecord
  validates :admission_fee, presence: true
  validates :annual_fee, presence: true
  validates :caution_money, presence: true
  validates :tution_fee, presence: true
  validates :almanac_fee, presence: true
end

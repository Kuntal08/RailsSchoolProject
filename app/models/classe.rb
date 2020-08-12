class Classe < ApplicationRecord
  has_many :sections
  has_one :age

  validates :classe, presence: true
  validates :stage, presence: true
  validates :description, presence: true
end

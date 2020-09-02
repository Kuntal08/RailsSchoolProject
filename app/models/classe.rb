class Classe < ApplicationRecord
  has_many :students, dependent: :destroy
  has_many :sections, dependent: :destroy
  has_one :age, dependent: :destroy
  has_one :fee, dependent: :destroy

  validates :classe, presence: true
  validates :stage, presence: true
  validates :description, presence: true
end

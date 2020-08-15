class Student < ApplicationRecord
  has_one_attached :image
  has_one_attached :file
  belongs_to :classe

  MODE_LIST = ["Cash", "Cheque", "Draft", "Credit Card", "Debit Card", "Net Banking"]
  STATUS_LIST = ["Pending", "Processed", "Approved", "Failed"]

  validates :name, presence: true
  validates :birth_date, presence: true
  validates :academic_year, presence: true
  validates :father_name, presence: true
  validates :mother_name, presence: true
  validates :address, presence: true
  validates :contact, presence: true
  validates :email, presence: true
  validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  validates :file, attached: true
end

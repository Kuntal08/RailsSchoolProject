class Section < ApplicationRecord
  belongs_to :classe

  validates :section_name, presence: true
end

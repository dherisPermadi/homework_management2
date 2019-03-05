class SubCategory < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4}
  has_many :homeworks #hubungan dengan model homeworks
  belongs_to :category #hubungan dengan model category
end

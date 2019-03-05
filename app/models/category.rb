class Category < ApplicationRecord
  #presence berarti field dalam tabel tidak boleh kosong
  #length berarti jumlah text tidak boleh lebih dari minimum(4)
  validates :name, presence: true, length: {minimum: 4}
  has_many :homeworks #hubungan dengan tabel Homeworks
  has_many :sub_category #hubungan dengan tabel Subcategories
end

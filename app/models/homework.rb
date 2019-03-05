class Homework < ApplicationRecord
  #presence berarti field dalam tabel tidak boleh kosong
  #length berarti jumlah text tidak boleh lebih dari maximum(300)
  validates :homework_name, presence: true
  validates :category, presence: true
  validates :deadline, presence: true
  validates :description, presence: true, length: {maximum:300}

  validate :deadline_cannot_be_in_the_past
  belongs_to :category #hubungan dengan model category
  belongs_to :sub_category #hubungan dengan model sub_category

  #contoh custom validation untuk melakukan validasi
  #bahwa deadline tidak boleh terjadi di masa lampauu
  def deadline_cannot_be_in_the_past
    errors.add(:deadline, "can't be in the past") if
    deadline < Date.today
  end
end

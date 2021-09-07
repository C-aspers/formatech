class Course < ApplicationRecord

has_many :favorites
has_many :users, through: :favorites

has_many :comments
has_many :users, through: :comments

validates :description, presence: true,
length: { in: 3..2000 }

validates :title, presence: true,
length: { in: 3..140 }

validates :price, presence: true

validates :duration, presence: true,
numericality: { greater_than_or_equal_to: 0 }

validates :start_date, presence: true

validates :duration_scale, presence: true

validates :adress, presence: true,
length:{ in: 3..300 }

validates :zip_code, presence: true

validates :image_url, presence: true
end

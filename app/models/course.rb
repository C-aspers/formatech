class Course < ApplicationRecord

has_many :favorites
has_many :users, through: :favorites

has_many :comments
has_many :users, through: :comments


validates :title, presence: true,
length: {minimum: 3}

validates :price, presence: true

validates :duration, presence: true,
numericality: { greater_than_or_equal_to: 0 }

validates :start_date, presence: true

validates :is_remote, presence: true

validates :duration_scale, presence: true

validates :adress, presence: true,
length: {minimum: 5}

validates :zip_code, presence: true

validates :image_url, presence: true
end

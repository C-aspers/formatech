class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :favorites
has_many :courses, through: :favorites

has_many :comments
has_many :courses, through: :comments


validates :nickname, presence: true,
uniqueness: true,
length: {maximum: 20}

validates :image_url, presence: true

has_one_attached :picture

end

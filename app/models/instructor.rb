class Instructor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :comments
has_many :courses, through: :comments

validates :nickname, presence: true,
uniqueness: true,
length: {maximum: 20}

validates :siret, presence: true,
uniqueness: true,
length: { is: 14 }

validates :website, presence: true

validates :description, presence: true,
length: { in: 15..1000 }

validates :image_url, presence: true
end

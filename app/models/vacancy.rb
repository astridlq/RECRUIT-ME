class Vacancy < ApplicationRecord
  belongs_to :user

  has_many :vacancy_skills
  has_many :preferred_skills
  has_many :skills, through: :vacancy_skills
  # has_many :conversations

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :description, presence: true
  validates :department, presence: true
  validates :start_date, presence: true
  validates :location, presence: true
end

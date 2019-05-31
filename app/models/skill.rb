class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :vacancy_skills
  has_many :preferred_skills
  has_many :vacancies, through: :vacancy_skills
  has_many :develop_skills
  has_many :users, through: :develop_skills

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :skill_type, inclusion: { in: %w(hard soft experience),
    message: "%{value} is not a valid skill type" }
  validates :photo, presence: true
end

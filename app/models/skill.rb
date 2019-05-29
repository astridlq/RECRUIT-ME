class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills
  has_many :vacancy_skills
  has_many :vacancies, through: :vacancy_skills
  has_many :develop_skills
  has_many :users, through: :develop_skills


  validates :name, presence: true
  validates :description, presence: true
  validates :skill_type, presence: true
  validates :photo, presence: true
end

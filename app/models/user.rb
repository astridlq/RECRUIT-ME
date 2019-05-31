class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :vacancies
  has_many :user_skills
  has_many :develop_skills
  has_many :conversations
  has_many :messages
  has_many :skills, through: :user_skills
  mount_uploader :photo, PhotoUploader

  validates :first_name, presence: true
  validates :last_name, presence: true


  #TODO: add these validations to user at update
  # validates :job_title, presence: true
  # validates :description, presence: true
  # validates :department, presence: true
  # validates :location, presence: true
end

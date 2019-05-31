class ProfilesController < ApplicationController
  before_action :set_users, only: [:show]
  after_action :authenticate_user!

  def search
    @user = current_user
    authorize @user
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @key_experience = Skill.where(skill_type: 'experience')
    @vacancies = Vacancy.where(department: @user.department)
  end

  def index
    user = current_user
    @skills_to_match = params[:skill_ids].map(&:to_i)
    set_matches
  end

  def show
    @user = User.find(params[:id])
    @existing_skills = @user.user_skills
    @develop_skills = @user.develop_skills
  end

  def myprofile
    @user = current_user
    authorize @user
    @hard_skills = @user.skills.where(skill_type: 'hard')
    @soft_skills = @user.skills.where(skill_type: 'soft')
    @experience = @user.skills.where(skill_type: 'experience')
  end

  private

  def set_matches
    @matches = []
    # Have
    users = policy_scope(User).order(created_at: :desc)
    users.each do |user|
      skills = user.user_skills.pluck(:skill_id)
      is_match = (@skills_to_match & skills).any?
      @matches << user if is_match
    end

    # Develop
    users.each do |user|
      skills = user.develop_skills.pluck(:skill_id)
      is_match = (@skills_to_match & skills).any?
      @matches << user if is_match
    end

    @matches = @matches.uniq
    @matches.sort_by! do |match|
      match.user_skills.select {|user_skill| @skills_to_match.include?(user_skill.skill_id) }.length
    end
  end

  def set_users
    @user = User.find(params[:id])
    authorize @user
  end


end

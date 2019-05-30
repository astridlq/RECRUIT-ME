class ProfilesController < ApplicationController
  after_action :authenticate_user!

  def search
    @user = current_user
    authorize @user
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @key_experience = Skill.where(skill_type: 'experience')
  end

  def index
    user = current_user
    @skills_to_match = params[:skill_ids].map(&:to_i)
    set_matches
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
  end
end

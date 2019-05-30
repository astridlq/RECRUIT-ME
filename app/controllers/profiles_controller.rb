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
    @user = current_user
    @users = policy_scope(User).order(created_at: :desc)

    skills_to_match = params[:skill_ids].map(&:to_i)

    # Have
    @have_skills = []
    @users.each do |user|
      skills = user.user_skills.pluck(:skill_id)
      is_match = (skills_to_match & skills).any?
      if is_match
        @have_skills << user
      end
    end

    # Develop
    @dev_skills = []
    @users.each do |user|
      skills = user.develop_skills.pluck(:skill_id)
      is_match = (skills_to_match & skills).any?
      if is_match
        @dev_skills << user
      end
    end

    matches = []
    matches << @have_skills
    matches << @dev_skills
    @matches = matches.flatten
  end
end

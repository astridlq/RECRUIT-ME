class ProfilesController < ApplicationController
  after_action :authenticate_user!

  def search
    @user = current_user
    authorize @user
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @experience = Skill.where(skill_type: 'experience')
  end

  def index
    @user = current_user
    @users = policy_scope(User).order(created_at: :desc)
    @results = params[:skill_ids]
  end

  def myprofile
    @user = current_user
    authorize @user
    @hard_skills = @user.skills.where(skill_type: 'hard')
    @soft_skills = @user.skills.where(skill_type: 'soft')
    @experience = @user.skills.where(skill_type: 'experience')
  end
end

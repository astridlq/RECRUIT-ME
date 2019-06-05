class ProfilesController < ApplicationController
  before_action :set_users, only: [:show]
  after_action :authenticate_user!

  def search
    @user = current_user
    authorize @user
    @pre_selected = params[:skills_ids].map if params[:skills_ids]
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
    @existing_skills = @user.user_skills
    @develop_skills = @user.develop_skills
  end

  def myprofile
    @user = current_user
    authorize @user
    @existing_skills = @user.user_skills
    @develop_skills = @user.develop_skills
  end

  def update
    @user = current_user
    authorize @user
    @user.update(user_params)
    redirect_to myprofile_path
  end

  def edit_user_skills
    @user = current_user
    authorize @user
    @pre_selected = params[:skills_ids].map if params[:skills_ids]
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @key_experience = Skill.where(skill_type: 'experience')
  end

    def update_user_skills
    @user = current_user
    authorize @user
    # @pre_selected = params[:skills_ids].map if params[:skills_ids]
    # @all_skills = Skill.all
    # @hard_skills = Skill.where(skill_type: 'hard')
    # @soft_skills = Skill.where(skill_type: 'soft')
    # @key_experience = Skill.where(skill_type: 'experience')
    # @user.user_skills.update(@pre_selected)
    @user.user_skills.destroy_all
    params[:skill_ids].each do |skill_id|
      @user.user_skills << UserSkill.create(user: @user, skill: Skill.find(skill_id))
    end
    redirect_to myprofile_path
  end

  def edit_develop_skills
    @user = current_user
    authorize @user
    @pre_selected = params[:skills_ids].map if params[:skills_ids]
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
  end

  def update_develop_skills
    @user = current_user
    authorize @user
    # @pre_selected = params[:skills_ids].map if params[:skills_ids]
    # @all_skills = Skill.all
    # @hard_skills = Skill.where(skill_type: 'hard')
    # @soft_skills = Skill.where(skill_type: 'soft')
    # @key_experience = Skill.where(skill_type: 'experience')
    # @user.user_skills.update(@pre_selected)
    @user.develop_skills.destroy_all
    params[:skill_ids].each do |skill_id|
      @user.develop_skills << DevelopSkill.create(user: @user, skill: Skill.find(skill_id))
    end
    redirect_to myprofile_path
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

  def user_params
    params.require(:user).permit(:description)
  end

  def edit_user_skills_params
    params.require(:skill_ids).permit(:user_skill_ids)
  end
end

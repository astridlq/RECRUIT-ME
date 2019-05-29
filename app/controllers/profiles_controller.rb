class ProfilesController < ApplicationController
  def search
    @user = current_user
    authorize :profiles, :search?
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @key_experience = Skill.where(skill_type: 'experience')
  end

  def index
    @results = params[:skills]
  end
end

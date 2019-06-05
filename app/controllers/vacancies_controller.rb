class VacanciesController < ApplicationController
  before_action :set_vacancies, only: [:show]

  def index
    @vacancies = Vacancy.all
    @skills_to_match = params[:skill_ids].map(&:to_i)
    set_matches
  end

  def show
    @users = User.where(job_title: @vacancy.title)
    @vacancy_skills = @vacancy.vacancy_skills
    @preferred_skills = @vacancy.preferred_skills
  end

  def search
    @user = current_user
    @pre_selected = params[:skills_ids].map if params[:skills_ids]
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @key_experience = Skill.where(skill_type: 'experience')
    @vacancies = Vacancy.where(department: @user.department)
    authorize @vacancies
  end

  private

  def set_matches
    @matches = []
    # Have
    vacancies = policy_scope(Vacancy).order(created_at: :desc)
    vacancies.each do |vacancy|
      skills = vacancy.vacancy_skills.pluck(:skill_id)
      is_match = (@skills_to_match & skills).any?
      @matches << vacancy if is_match
    end

    vacancies.each do |vacancy|
      skills = vacancy.preferred_skills.pluck(:skill_id)
      is_match = (@skills_to_match & skills).any?
      @matches << vacancy if is_match
    end

    @matches = @matches.uniq
    @matches.sort_by! do |match|
      match.vacancy_skills.select {|vacancy_skill| @skills_to_match.include?(vacancy_skill.skill_id) }.length
    end
  end


  def set_vacancies
    @vacancy = Vacancy.find(params[:id])
    authorize @vacancy
  end
end

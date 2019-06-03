class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.all
    @skills_to_match = params[:skill_ids].map(&:to_i)
    set_matches
  end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def search
    @user = current_user
    authorize @user
    @all_skills = Skill.all
    @hard_skills = Skill.where(skill_type: 'hard')
    @soft_skills = Skill.where(skill_type: 'soft')
    @key_experience = Skill.where(skill_type: 'experience')
    @vacancies = Vacancy.where(department: @user.department)
  end

  def set_matches
    @matches = []
    # Have
    vacancies = policy_scope(Vacancy).order(created_at: :desc)
    vacancies.each do |vacancy|
      skills = vacancy.vacancy_skills.pluck(:skill_id)
      is_match = (@skills_to_match & skills).any?
      @matches << vacancy if is_match
    end
  end
end

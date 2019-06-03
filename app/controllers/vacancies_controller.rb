class VacanciesController < ApplicationController
  before_action :set_vacancies, only: [:show]

  def index
    @vacancies = Vacancy.all
    @vacancies = policy_scope(Vacancy).order(created_at: :desc)
  end

  def show
    @vacancy_skills = @vacancy.vacancy_skills
    @preferred_skills = @vacancy.preferred_skills
  end

  private

  def set_vacancies
    @vacancy = Vacancy.find(params[:id])
    authorize @vacancy
  end
end

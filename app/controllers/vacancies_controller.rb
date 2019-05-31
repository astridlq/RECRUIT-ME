class VacanciesController < ApplicationController
  def index
    @vacancies = Vacancy.all
    @vacancies = policy_scope(Vacancy).order(created_at: :desc)
  end

  def show
  end
end

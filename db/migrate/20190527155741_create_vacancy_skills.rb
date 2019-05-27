class CreateVacancySkills < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancy_skills do |t|
      t.references :vacancy, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end

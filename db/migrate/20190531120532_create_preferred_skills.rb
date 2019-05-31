class CreatePreferredSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :preferred_skills do |t|
      t.references :vacancy_id, foreign_key: true
      t.references :skill_id, foreign_key: true

      t.timestamps
    end
  end
end

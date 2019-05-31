class PreferredSkill < ApplicationRecord
  belongs_to :vacancy_id
  belongs_to :skill_id
end

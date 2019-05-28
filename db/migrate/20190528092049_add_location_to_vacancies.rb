class AddLocationToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :location, :string
  end
end

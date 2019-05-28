class AddPhotoToVacancies < ActiveRecord::Migration[5.2]
  def change
    add_column :vacancies, :photo, :string
  end
end

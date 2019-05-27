class CreateVacancies < ActiveRecord::Migration[5.2]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.string :description
      t.string :department
      t.date :start_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

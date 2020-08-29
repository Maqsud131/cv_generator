class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.belongs_to :cv
      t.string :organization
      t.string :title
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end

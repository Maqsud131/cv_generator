class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.belongs_to :cv
      t.string :institution
      t.string :certificate_title
      t.date :start_date
      t.date :end_date
      t.string :content
      t.timestamps
    end
  end
end

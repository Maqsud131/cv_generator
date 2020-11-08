class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.belongs_to :cv
      t.string :content
      t.timestamps
    end
  end
end

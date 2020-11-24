class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.belongs_to :cv
      t.string :title
      t.string :content
      t.string :tech_stack
      t.string :link
      t.timestamps
    end
  end
end

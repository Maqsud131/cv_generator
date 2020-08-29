class CreateTextLines < ActiveRecord::Migration[5.2]
  def change
    create_table :text_lines do |t|
      t.belongs_to :experience
      t.string :content
      t.timestamps
    end
  end
end

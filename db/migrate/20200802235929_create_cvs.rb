class CreateCvs < ActiveRecord::Migration[5.2]
  def change
    create_table :cvs do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.timestamps
    end
  end
end

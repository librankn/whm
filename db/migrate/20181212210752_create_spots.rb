class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.text :spot_name
      t.text :loan_location
      t.text :loan_number
      t.text :url
      t.string :contributor_name
      t.string :last_update_contributor
      t.date :last_update_day
      t.text :contributor_comment
      t.text :spot_location
    end
  end
end

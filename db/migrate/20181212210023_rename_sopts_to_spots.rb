class RenameSoptsToSpots < ActiveRecord::Migration[5.2]
  def change
    drop_table :spots
    drop_table :sopts
  end
end

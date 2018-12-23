class AddColumnUsers < ActiveRecord::Migration[5.2]
  def up

    add_column :users, :provider, :string, null: false, default: ""
    add_column :users, :uid, :string, null: false, default: ""
    add_index :users, [:uid, :provider], unique: true

  end
end

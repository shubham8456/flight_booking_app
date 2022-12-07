class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type, :string, null: false, default: "Member"
  end
end

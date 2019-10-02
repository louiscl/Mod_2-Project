class AddAdminIdToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :admin_id, :integer
  end
end

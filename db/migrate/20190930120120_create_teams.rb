class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :company
      t.string :industry
      t.string :description

      t.timestamps
    end
  end
end

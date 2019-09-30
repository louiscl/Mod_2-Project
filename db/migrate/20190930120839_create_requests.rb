class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :team_id
      t.integer :user_id
      t.integer :question_id
      t.string :name
      t.integer :age
      t.string :skills

      t.timestamps
    end
  end
end

class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :championship_id, index: true
      t.integer :user_id, index: true

      t.timestamps null: false
    end
  end
end

class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.integer :user_id, index: true
      t.timestamps null: false
    end
  end
end

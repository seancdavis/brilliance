class CreateIdeaRatings < ActiveRecord::Migration
  def change
    create_table :idea_ratings do |t|
      t.integer :idea_id
      t.integer :setting_id
      t.integer :value

      t.timestamps
    end
  end
end

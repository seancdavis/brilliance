class CreateIdeaRequirements < ActiveRecord::Migration
  def change
    create_table :idea_requirements do |t|
      t.integer :idea_id
      t.integer :setting_id
      t.boolean :value

      t.timestamps
    end
  end
end

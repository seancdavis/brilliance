class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :slug
      t.text :desc_md
      t.text :desc_html
      t.string :status
      t.integer :category_id
      t.integer :status_id

      t.timestamps
    end
  end
end

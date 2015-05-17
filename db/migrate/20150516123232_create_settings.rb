class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
  end
end

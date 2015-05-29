class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :item_id
      t.string :item_type
      t.integer :author_id
      t.text :markdown
      t.text :html

      t.timestamps
    end
  end
end

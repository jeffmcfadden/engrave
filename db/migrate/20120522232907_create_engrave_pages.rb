class CreateEngravePages < ActiveRecord::Migration
  def change
    create_table :engrave_pages do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
    
    add_index :engrave_pages, :slug, unique: true
  end
end

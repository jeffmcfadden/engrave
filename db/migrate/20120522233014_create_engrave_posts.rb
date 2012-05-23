class CreateEngravePosts < ActiveRecord::Migration
  def change
    create_table :engrave_posts do |t|
      t.string :title
      t.string :slug
      t.references :author
      t.string :story_link
      t.boolean :draft
      t.datetime :published_at
      t.text :body

      t.timestamps
    end
    add_index :engrave_posts, :author_id
    add_index :engrave_posts, :published_at
    add_index :engrave_posts, :draft
    add_index :engrave_posts, :slug, unique: true
    
  end
end

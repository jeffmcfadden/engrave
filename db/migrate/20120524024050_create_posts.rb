class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.references :author
      t.string :story_link
      t.boolean :draft
      t.datetime :published_at
      t.text :body

      t.timestamps
    end
    add_index :posts, :author_id
    add_index :posts, :published_at
    add_index :posts, :draft
    add_index :posts, :slug, unique: true
  end
end

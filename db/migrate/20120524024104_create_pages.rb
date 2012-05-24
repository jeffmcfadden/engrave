class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
    
    add_index :pages, :slug, unique: true
  end
end

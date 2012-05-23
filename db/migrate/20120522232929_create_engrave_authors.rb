class CreateEngraveAuthors < ActiveRecord::Migration
  def change
    create_table :engrave_authors do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end

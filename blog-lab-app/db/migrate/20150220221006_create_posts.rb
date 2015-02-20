class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :category
      t.references :author, index: true

      t.timestamps
    end

    add_foreign_key :posts, :authors
  end
end

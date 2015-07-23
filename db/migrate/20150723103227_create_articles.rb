class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :author_id
      t.string :article_header
      t.text :article_name
      t.string :article_picture

      t.timestamps null: false
    end
  end
end

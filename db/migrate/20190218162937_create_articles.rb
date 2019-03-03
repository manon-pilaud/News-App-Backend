class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string  :description
      t.string :article_url
      t.string :image_url
      t.integer :country_id
      t.timestamps
    end
  end
end

class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string  :source
      t.string :article_url
      t.timestamps
    end
  end
end

class CreateArticleCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :article_countries do |t|
      t.integer :country_id
      t.integer :article_id
      t.timestamps
    end
  end
end

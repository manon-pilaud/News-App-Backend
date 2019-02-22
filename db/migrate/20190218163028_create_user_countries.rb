class CreateUserCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :user_countries do |t|
      t.integer :country_id
      t.integer :user_id
      t.timestamps
    end
  end
end

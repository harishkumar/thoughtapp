class CreateOrgs < ActiveRecord::Migration[5.2]
  def change
    create_table :orgs do |t|
      t.string :oid
      t.string :name
      t.string :permalink
      t.string :crunchbase_url
      t.string :homepage_url
      t.string :blog_url
      t.string :twitter_username
      t.string :category_code
      t.string :number_of_employees
      t.string :description

      t.timestamps
    end
  end
end

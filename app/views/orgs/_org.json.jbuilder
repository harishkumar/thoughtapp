json.extract! org, :id, :oid, :name, :permalink, :crunchbase_url, :homepage_url, :blog_url, :twitter_username, :category_code, :number_of_employees, :description, :created_at, :updated_at
json.url org_url(org, format: :json)

json.extract! wiki, :id, :title, :user_id, :body, :parent, :version, :integer, :deleted, :default_sort, :last_revision, :created_at, :updated_at
json.url wiki_url(wiki, format: :json)

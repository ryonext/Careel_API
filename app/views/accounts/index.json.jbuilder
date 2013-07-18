json.array!(@accounts) do |account|
  json.extract! account, :name, :profile, :icon_path, :area, :twitter_id, :oauth_token, :oauth_secret, :client_token
  json.url account_url(account, format: :json)
end

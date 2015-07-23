json.array!(@articles) do |article|
  json.extract! article, :id, :authorID, :article_header, :article_name, :article_picture
  json.url article_url(article, format: :json)
end

json.array!(@books) do |book|
  json.extract! book, :id, :name, :description, :price, :published_date, :author_id, :publisher_id
  json.url book_url(book, format: :json)
end

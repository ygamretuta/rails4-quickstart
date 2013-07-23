json.array!(@books) do |book|
  json.extract! book, :title, :price, :buyer_id, :seller_id
  json.url book_url(book, format: :json)
end

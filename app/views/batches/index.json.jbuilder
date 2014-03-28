json.array!(@batches) do |batch|
  json.extract! batch, :id, :date, :variety, :fruit_source, :batch_number, :cooking_time, :four_oz_yield, :eight_oz_yield, :cooking_notes
  json.url batch_url(batch, format: :json)
end

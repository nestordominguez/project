json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :addressNum
  json.url company_url(company, format: :json)
end

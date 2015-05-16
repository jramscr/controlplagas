json.array!(@payment_increases) do |payment_increase|
  json.extract! payment_increase, :id, :percentage, :frequency
  json.url payment_increase_url(payment_increase, format: :json)
end

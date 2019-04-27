json.extract! bill, :id, :name, :period, :amount, :deadline, :paid, :created_at, :updated_at
json.url bill_url(bill, format: :json)

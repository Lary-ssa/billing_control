json.extract! bank_slip, :id, :bar_code, :client_id, :payer_id, :due_date, :amount, :description, :created_at, :updated_at
json.url bank_slip_url(bank_slip, format: :json)

class BankSlip < ApplicationRecord
  belongs_to :client
  belongs_to :payer, class_name: "Client"
end

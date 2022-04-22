require 'rails_helper'

RSpec.describe "bank_slips/show", type: :view do
  before(:each) do
    @bank_slip = assign(:bank_slip, BankSlip.create!(
      bar_code: "Bar Code",
      client: nil,
      payer: nil,
      amount: 2.5,
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bar Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/MyText/)
  end
end

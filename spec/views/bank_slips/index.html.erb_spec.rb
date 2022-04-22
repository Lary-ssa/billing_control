require 'rails_helper'

RSpec.describe "bank_slips/index", type: :view do
  before(:each) do
    assign(:bank_slips, [
      BankSlip.create!(
        bar_code: "Bar Code",
        client: nil,
        payer: nil,
        amount: 2.5,
        description: "MyText"
      ),
      BankSlip.create!(
        bar_code: "Bar Code",
        client: nil,
        payer: nil,
        amount: 2.5,
        description: "MyText"
      )
    ])
  end

  it "renders a list of bank_slips" do
    render
    assert_select "tr>td", text: "Bar Code".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end

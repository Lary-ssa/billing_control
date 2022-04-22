require 'rails_helper'

RSpec.describe "bank_slips/edit", type: :view do
  before(:each) do
    @bank_slip = assign(:bank_slip, BankSlip.create!(
      bar_code: "MyString",
      client: nil,
      payer: nil,
      amount: 1.5,
      description: "MyText"
    ))
  end

  it "renders the edit bank_slip form" do
    render

    assert_select "form[action=?][method=?]", bank_slip_path(@bank_slip), "post" do

      assert_select "input[name=?]", "bank_slip[bar_code]"

      assert_select "input[name=?]", "bank_slip[client_id]"

      assert_select "input[name=?]", "bank_slip[payer_id]"

      assert_select "input[name=?]", "bank_slip[amount]"

      assert_select "textarea[name=?]", "bank_slip[description]"
    end
  end
end

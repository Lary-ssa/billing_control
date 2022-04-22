require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        document: "Document",
        contact: "Contact",
        address: "Address",
        email: "Email",
        age: "Age"
      ),
      Client.create!(
        name: "Name",
        document: "Document",
        contact: "Contact",
        address: "Address",
        email: "Email",
        age: "Age"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Document".to_s, count: 2
    assert_select "tr>td", text: "Contact".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Age".to_s, count: 2
  end
end

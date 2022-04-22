require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      name: "Name",
      document: "Document",
      contact: "Contact",
      address: "Address",
      email: "Email",
      age: "Age"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Document/)
    expect(rendered).to match(/Contact/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Age/)
  end
end

require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      name: "MyString",
      document: "MyString",
      contact: "MyString",
      address: "MyString",
      email: "MyString",
      age: "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[document]"

      assert_select "input[name=?]", "client[contact]"

      assert_select "input[name=?]", "client[address]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[age]"
    end
  end
end

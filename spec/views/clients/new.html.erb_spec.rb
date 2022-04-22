require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      name: "MyString",
      document: "MyString",
      contact: "MyString",
      address: "MyString",
      email: "MyString",
      age: "MyString"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[document]"

      assert_select "input[name=?]", "client[contact]"

      assert_select "input[name=?]", "client[address]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[age]"
    end
  end
end

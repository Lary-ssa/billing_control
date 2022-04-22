require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/bank_slips", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # BankSlip. As you add validations to BankSlip, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      BankSlip.create! valid_attributes
      get bank_slips_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bank_slip = BankSlip.create! valid_attributes
      get bank_slip_url(bank_slip)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bank_slip_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      bank_slip = BankSlip.create! valid_attributes
      get edit_bank_slip_url(bank_slip)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new BankSlip" do
        expect {
          post bank_slips_url, params: { bank_slip: valid_attributes }
        }.to change(BankSlip, :count).by(1)
      end

      it "redirects to the created bank_slip" do
        post bank_slips_url, params: { bank_slip: valid_attributes }
        expect(response).to redirect_to(bank_slip_url(BankSlip.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new BankSlip" do
        expect {
          post bank_slips_url, params: { bank_slip: invalid_attributes }
        }.to change(BankSlip, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bank_slips_url, params: { bank_slip: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bank_slip" do
        bank_slip = BankSlip.create! valid_attributes
        patch bank_slip_url(bank_slip), params: { bank_slip: new_attributes }
        bank_slip.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bank_slip" do
        bank_slip = BankSlip.create! valid_attributes
        patch bank_slip_url(bank_slip), params: { bank_slip: new_attributes }
        bank_slip.reload
        expect(response).to redirect_to(bank_slip_url(bank_slip))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bank_slip = BankSlip.create! valid_attributes
        patch bank_slip_url(bank_slip), params: { bank_slip: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bank_slip" do
      bank_slip = BankSlip.create! valid_attributes
      expect {
        delete bank_slip_url(bank_slip)
      }.to change(BankSlip, :count).by(-1)
    end

    it "redirects to the bank_slips list" do
      bank_slip = BankSlip.create! valid_attributes
      delete bank_slip_url(bank_slip)
      expect(response).to redirect_to(bank_slips_url)
    end
  end
end

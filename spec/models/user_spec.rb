require 'rails_helper'
require 'support/violate_check_constraint_matcher'

describe User do
  describe "Email" do
    let(:user) do
      User.create!(email: "testing@example.com", password: "qwertyuiop",
                   password_confirmation: "qwertyuiop")
    end

    it "absolutely prevents non-company email addresses" do
      expect {
        user.update_attribute(:email, "testing@nocompany.com")
      }.to violate_check_constraint :email_must_be_company_email
    end
  end
end

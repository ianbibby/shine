require 'rails_helper.rb'

describe "testing that RSpec is configured" do
  it "should pass" do
    expect(true).to eq(true)
  end

  it "can fail" do
    expect(true).to eq(false)
  end
end

require 'spec_helper'

describe Item do
  let(:user) {FactoryGirl.create(:user)}
  before { @item = user.items.build(description: "Test item description") }
  
  subject { @item }
  
  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its (:user) { should eq user }
  
  it { should be_valid }
  
  describe "when user_id is not present" do
    before { @item.user_id = nil }
    it { should_not be_valid }
  end
  
  describe "when descrition is blank" do
    before { @item.description = " " }
    it { should_not be_valid }
  end
  
  describe "when descrition is too long" do
    before { @item.description = "a" * 401 }
    it { should_not be_valid }
  end
  
end

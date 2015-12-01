require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = User.new(name: "Example User", email: "user@example.com") }
  
  subject { @user }

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:email) }

  it { is_expected.to be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it {is_expected.to_not be_valid }
  end

  describe "when email is too long" do
    before { @user.email = "a" + 244 + "@example.com" }
    it {is_expected.to_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it {is_expected.to_not be_valid }
  end

  describe "when name is too long" do
    before { @user.name = "a" * 51 }
    it {is_expected.to_not be_valid }
  end

  describe "when email format is invalid" do
    it "is invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. 
                     foo@bar_baz.com foo@bar+baz.com ]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).to_not be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "is valid" do
      addresses = %w[ user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn ]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end
end

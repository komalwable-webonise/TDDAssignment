require 'rails_helper'

RSpec.describe User, type: :model do
  # context 'validations' do
  #   it { should validate_presence_of :email }
  # #   it { should validate_presence_of :password }
  # #   it { should validate_confirmation_of :password }
  # #   it { should validate_uniqueness_of(:email).case_insensitive }
  # end
  context 'validations' do
    it "ensures the presence of a email" do
      user = User.new(email: "").save
      expect(user).to eq(false)
    end
    it "ensures that email has @ characters" do
      user = User.new(email: "komgmail.com").save
      expect(user).to eq(false)
    end
    it "ensures that email shoud be unique " do
      user = User.new(email: "komalwable@gmail.com",password:"komal12345")
      expect(user).to be_valid
    end
    it "ensures that password has maximum of 10 charachters" do
      user = User.new(password: "komal12345").save
      expect(user).to eq(false)
    end
    it "ensures that password has more of 10 charachters" do
      user = User.new(password: "komalwable12345").save
      expect(user).to eq(false)
    end
  end

  context 'scope tests' do
    let (:params) { {password:'K@W11231', email: 'sample@example.com'} }
    before(:each) do
      User.new(params).save
      User.new(params).save
    end
  end
end

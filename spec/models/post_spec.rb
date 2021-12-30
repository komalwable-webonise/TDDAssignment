require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'validations' do
    it "ensures the presence of a body" do
      post = Post.new(body: "").save
      expect(post).to eq(false)
    end
    it "ensures that title has two or more characters" do
      post = Post.new(body: "j").save
      expect(post).to eq(false)
    end
    it "ensures that valid title will be saved " do
      post = Post.new(title: "komal", body:"hello, how are you?")
      expect(post).to be_valid
    end
    it "ensures that title has maximum of 10 charachters" do
      post = Post.new(body: "komalwable").save
      expect(post).to eq(false)
    end
    it "ensures that valid title and body will be saved" do
      post = Post.new(title:"webonise",body: "SDE intern").save
      expect(post).to eq(true)
  end
  end
end

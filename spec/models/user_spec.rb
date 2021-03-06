require 'rails_helper'

RSpec.describe User, type: :model do

  it "is not valid without a email" do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end
  it "is valid with valid attributes" do
    expect(User.new(id:'1',name:'words',email:'email@gmail.com',password_digest:'beauty')).to be_valid
  end


end

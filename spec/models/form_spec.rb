require 'rails_helper'

RSpec.describe Form, type: :model do
  it "is valid with valid attributes" do
      expect(Form.new(firstname:'anythng',lastname:'anything',email:'email@gmail.com',password:'beauty',address:'anything')).to be_valid
  end

  it 'validates the email' do
    @form= Form.create(email:'nkbgmail.com')
    res= @form.save
    expect(res).to be(false)
  end
  it 'validates the password' do
    @form= Form.create(firstname:'abc',lastname:'abc',email:'email@gmail.com',password:'string',address:'anythng')
    res= @form.save
    expect(res).to be(true)
  end

  it 'validates the firstname' do
    @form= Form.create(firstname:'abc',lastname:'abc',email:'email@gmail.com',password:'string',address:'anythng')
    res= @form.save
    expect(res).to be(true)
  end

  it 'validates the email' do
    @form= Form.create(email:'nkb@gmail.com')
    res= @form.save
    expect(res).not_to be_nil
  end

end

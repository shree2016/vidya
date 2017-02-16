require 'rails_helper'

RSpec.describe FormsController, type: :controller do
  describe "GET #new" do
  it "is assigns a value forms @form" do
    expect(Form.new(firstname:'anything',lastname:'anything',email:'email@gmail.com',password:'beauty',address:'anything')).to eq(@form)
  end
end

end

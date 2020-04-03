require 'rails_helper'

describe Park, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :admission_price }
  end

  describe 'relationships' do
    it { should have_many :rides }
  end
end

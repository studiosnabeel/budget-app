require 'rails_helper'

RSpec.describe Tran, type: :model do
  describe 'validations' do
    it 'requires a name' do
      tran = Tran.new(amount: 50.0)
      expect(tran.valid?).to be_falsey
      expect(tran.errors[:name]).to include("can't be blank")
    end

    it 'requires an amount greater than or equal to 0' do
      tran = Tran.new(name: 'Groceries', amount: -10.0)
      expect(tran.valid?).to be_falsey
      expect(tran.errors[:amount]).to include('must be greater than 0')
    end
  end
end

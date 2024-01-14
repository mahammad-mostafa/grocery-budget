require 'rails_helper'

RSpec.describe Item, type: :model do
  before { initializer }
  let!(:item) { Item.first }
  describe 'initial object' do
    it 'should be a valid item' do
      expect(item).to(be_valid)
    end
  end
  describe 'name attribute' do
    it 'should not be blank' do
      item.name = ''
      expect(item).to_not(be_valid)
    end
  end
  describe 'amount attribute' do
    it 'should not be blank' do
      item.amount = ''
      expect(item).to_not(be_valid)
    end
    it 'should be a number' do
      item.amount = 'a'
      expect(item).to_not(be_valid)
    end
    it 'should not be zero' do
      item.amount = 0
      expect(item).to_not(be_valid)
    end
    it 'should not be negative' do
      item.amount = -1
      expect(item).to_not(be_valid)
    end
  end
end

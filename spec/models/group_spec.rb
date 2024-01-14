require 'rails_helper'

RSpec.describe Group, type: :model do
  before { initializer }
  let!(:group) { Group.first }
  describe 'initial object' do
    it 'should be a valid group' do
      expect(group).to(be_valid)
    end
  end
  describe 'name attribute' do
    it 'should not be blank' do
      group.name = ''
      expect(group).to_not(be_valid)
    end
  end
  describe 'icon attribute' do
    it 'should not be blank' do
      group.icon = ''
      expect(group).to_not(be_valid)
    end
  end
end

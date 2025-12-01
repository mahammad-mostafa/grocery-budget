require 'rails_helper'

RSpec.describe ItemsController, type: :system do
  before { initializer('login') }
  let!(:path) { new_item_path }
  describe 'new action view' do
    it 'should have a link to return to group items list' do
      visit(path)
      expect(find('header a')['href']).to(have_content(groups_path))
    end
    it 'should open items list page with a link' do
      visit(path)
      find('header a').click
      expect(page).to(have_current_path(groups_path))
    end
    it 'should require input for name of the item' do
      visit(path)
      expect(find('input[type=text]')['placeholder']).to(have_content('Name'))
    end
    it 'should require input for amount of the item' do
      visit(path)
      expect(find('input[type=number]')['placeholder']).to(have_content('Amount'))
    end
    it 'should require selection of group for the item' do
      visit(path)
      expect(find('input[type=checkbox]')['name']).to(have_content('group_ids'))
    end
    it 'should have save button to submit the item form' do
      visit(path)
      expect(page).to(have_content('Save'))
    end
  end
end

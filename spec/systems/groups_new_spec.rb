require 'rails_helper'

RSpec.describe GroupsController, type: :system do
  before { initializer('login') }
  let!(:path) { new_group_path }
  describe 'new action view' do
    it 'should have a link to return to groups list' do
      visit(path)
      expect(find('header a')['href']).to(have_content(groups_path))
    end
    it 'should open groups list page with a link' do
      visit(path)
      find('header a').click
      expect(page).to(have_current_path(groups_path))
    end
    it 'should require input for name of the group' do
      visit(path)
      expect(find('input[type=text]')['placeholder']).to(have_content('Name'))
    end
    it 'should require input for icon of the group' do
      visit(path)
      expect(find('input[type=url]')['placeholder']).to(have_content('Icon'))
    end
    it 'should have save button to submit the group form' do
      visit(path)
      expect(page).to(have_content('Save'))
    end
  end
end

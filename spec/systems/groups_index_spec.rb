require 'rails_helper'

RSpec.describe GroupsController, type: :system do
  before { initializer('login') }
  let!(:group) { Group.first }
  let!(:path) { groups_path }
  describe 'index action view' do
    it 'should display icon of each group' do
      visit(path)
      expect(find('.group img')['src']).to(eq(group.icon))
    end
    it 'should display name of each group' do
      visit(path)
      expect(find('.group')).to(have_content(group.name))
    end
    it 'should display total amount of each group' do
      visit(path)
      expect(find('.group')).to(have_content("$#{group.total}"))
    end
    it 'should open each group show page with a link' do
      visit(path)
      find('.group a').click
      expect(page).to(have_current_path(group_path(group)))
    end
    it 'should have a link to create new group' do
      visit(path)
      expect(find('.button')).to(have_content('new'))
    end
    it 'should open new group page with a link' do
      visit(path)
      find('.button a').click
      expect(page).to(have_current_path(new_group_path))
    end
  end
end

require 'rails_helper'

RSpec.describe GroupsController, type: :system do
  before { initializer('login') }
  let!(:group) { Group.first }
  let!(:path) { group_path(group) }
  describe 'show action view' do
    it 'should have a link to return to groups list' do
      visit(path)
      expect(find('header a')['href']).to(have_content(groups_path))
    end
    it 'should open groups list page with a link' do
      visit(path)
      find('header a').click
      expect(page).to(have_current_path(groups_path))
    end
    it 'should display name of group' do
      visit(path)
      expect(find('.banner')).to(have_content(group.name))
    end
    it 'should display total amount of group' do
      visit(path)
      expect(find('.banner')).to(have_content("$#{group.total}"))
    end
    it 'should display each item name in the group' do
      visit(path)
      expect(find('.item')).to(have_content(group.items.first.name))
    end
    it 'should display each item amount in the group' do
      visit(path)
      expect(find('.item')).to(have_content("$#{group.items.first.amount}"))
    end
    it 'should display each item creation date in the group' do
      visit(path)
      expect(find('.item')).to(have_content(group.items.first.created_at.strftime('%Y-%m-%d')))
    end
    it 'should have a link to create new item' do
      visit(path)
      expect(find('.button')).to(have_content('new'))
    end
    it 'should open new item page with a link' do
      visit(path)
      find('.button a').click
      expect(page).to(have_current_path(new_item_path))
    end
  end
end

require 'rails_helper'

RSpec.describe UsersController, type: :system do
  describe 'index action view' do
    it 'should display splash page' do
      visit(root_path)
      expect(page).to(have_content('Grocery'))
    end
    it 'should have a login link' do
      visit(root_path)
      expect(page).to(have_content('Login'))
    end
    it 'should open login page with a link' do
      visit(root_path)
      page.click_link('Login')
      expect(page).to(have_current_path(new_user_session_path))
    end
    it 'should have a register link' do
      visit(root_path)
      expect(page).to(have_content('Register'))
    end
    it 'should open register page with a link' do
      visit(root_path)
      page.click_link('Register')
      expect(page).to(have_current_path(new_user_registration_path))
    end
  end
end

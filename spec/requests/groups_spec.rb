require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  before { initializer('login') }
  let!(:group) { Group.first }
  describe 'index action method' do
    it 'should return correct response status' do
      get(groups_path)
      expect(response).to(have_http_status(:success))
    end
    it 'should render correct view template' do
      get(groups_path)
      expect(response).to(render_template(:index))
    end
    it 'should return correct placeholder text' do
      get(groups_path)
      expect(response.body).to(include('list'))
    end
  end
  describe 'show action method' do
    it 'should return correct response status' do
      get(group_path(group))
      expect(response).to(have_http_status(:success))
    end
    it 'should render correct view template' do
      get(group_path(group))
      expect(response).to(render_template(:show))
    end
    it 'should return correct placeholder text' do
      get(group_path(group))
      expect(response.body).to(include('items'))
    end
  end
  describe 'new action method' do
    it 'should return correct response status' do
      get(new_group_path)
      expect(response).to(have_http_status(:success))
    end
    it 'should render correct view template' do
      get(new_group_path)
      expect(response).to(render_template(:new))
    end
    it 'should return correct placeholder text' do
      get(new_group_path)
      expect(response.body).to(include('group'))
    end
  end
end

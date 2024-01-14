require 'rails_helper'

RSpec.describe ItemsController, type: :request do
  before { initializer('login') }
  let!(:item) { Item.first }
  describe 'new action method' do
    it 'should return correct response status' do
      get(new_item_path)
      expect(response).to(have_http_status(:success))
    end
    it 'should render correct view template' do
      get(new_item_path)
      expect(response).to(render_template(:new))
    end
    it 'should return correct placeholder text' do
      get(new_item_path)
      expect(response.body).to(include('item'))
    end
  end
end

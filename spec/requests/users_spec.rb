require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'return http 200' do
      get users_path
      expect(response).to have_http_status(:ok)
    end

    it 'render correct view' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'render correct text on view' do
      get users_path
      expect(response.body).to include('User name 1')
    end
  end

  describe 'GET /show' do
    before(:each) { get user_path(2) }
    it 'return http 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'render correct view' do
      expect(response).to render_template(:show)
    end

    it 'render correct text on view' do
      expect(response.body).to include('Lorem ipsum amet USERS')
    end
  end
end

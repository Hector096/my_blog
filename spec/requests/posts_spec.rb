require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before { get '/users/1/posts' }

    it 'return http 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'render correct view' do
      expect(response).to render_template(:index)
    end
  end

  describe 'GET /show' do
    before { get '/users/1/posts/1' }

    it 'return http 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'render correct view' do
      expect(response).to render_template(:show)
    end
  end
end

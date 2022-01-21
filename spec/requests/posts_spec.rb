require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) { get user_posts_path user_id: 2 }

    it 'return http 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'render correct view' do
      expect(response).to render_template(:index)
    end

    it 'render correct text on view' do
      expect(response.body).to include('Lorem ipsum amet')
    end
  end

  describe 'GET /show' do
    before(:each) { get user_post_path user_id: 2, id: 2 }

    it 'return http 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'render correct view' do
      expect(response).to render_template(:show)
    end

    it 'render correct text on view' do
      expect(response.body).to include('Lorem ipsum amet SHOW')
    end
  end
end

require 'rails_helper'

RSpec.describe 'Login', type: :feature do
  describe 'User' do
    before(:each) do
      @user1 = User.create! name: 'Chaw', password: '123456', bio: 'Lorem ipsum dolor sit amet',
                            email: 'chaw@gmail.com', confirmed_at: Time.now
      @user2 = User.create! name: 'Brian', password: '123456', bio: 'My name is Brian',
                            email: 'brian@gmail.com', confirmed_at: Time.now
      visit root_path
      fill_in 'Email', with: 'chaw@gmail.com'
      fill_in 'Password', with: '123456'
      click_button 'Log in'

      @post1 = @user1.posts.create!(title: 'To Be',
                                    text: 'The big question is: "To be or not to be a Ruby programmer"')
      @post2 = @user1.posts.create!(title: 'Hello',
                                    text: 'Why people say HTML is not a programming language..."')
      @post3 = @user1.posts.create!(title: 'Hey',
                                    text: 'With the clif hanger seen in the first half of season 4, do you think..."')

      @comment1 = @post1.comments.create!(text: 'This is the first comment for the first post', author_id: @user1.id)
      @comment2 = @post1.comments.create!(text: 'This is the second comment', author_id: @user2.id)
      @comment3 = @post1.comments.create!(text: 'This is the third comment', author_id: @user2.id)
      @like1 = @post1.likes.create!(author_id: @user2.id)

      visit user_post_path(@user1, @post1)
    end

    it 'shows posts title' do
      expect(page).to have_content('To Be')
    end

    it 'shows the person who wrote the post' do
      expect(page).to have_content('Chaw')
    end

    it 'shows number of comments' do
      expect(page).to have_content('Comments: 3')
    end

    it 'shows number of likes' do
      expect(page).to have_content('Likes: 1')
    end

    it 'can see the post\'s body.' do
      expect(page).to have_content('This is the first comment for the first post')
    end

    it 'can see the username of each commentor.' do
      expect(page).to have_content 'Brian'
    end

    it 'can see the comments of each commentor.' do
      expect(page).to have_content 'This is the second comment'
    end
  end
end

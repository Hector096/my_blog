# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


image1 = 'https://images.unsplash.com/photo-1552058544-f2b08422138a?w=300'
image2 = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300'
image3 = 'https://images.unsplash.com/photo-1546456073-92b9f0a8d413?w=300'
image4 = 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300'


    jzy = User.create!(name: 'jzy', photo: image1 , bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna merryqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut merryquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', posts_counter: 0)
    merry = User.create!(name: 'merry', photo: image2, bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna merryqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut merryquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', posts_counter: 0)
    henry = User.create!(name: 'Henry', photo: image3 , bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna merryqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut merryquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', posts_counter: 0)
    lara = User.create!(name: 'Lara', photo: image4, bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna merryqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut merryquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', posts_counter: 0)
    
    
            post1 = jzy.posts.create!( title: 'Cats and Dogs', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post2 = jzy.posts.create!( title: 'Food', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post3 = jzy.posts.create!( title: 'Cars', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post4 = jzy.posts.create!( title: 'Nature', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post5 = jzy.posts.create!( title: 'Dance', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post6 = merry.posts.create!( title: 'Never ending fun', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post7 = henry.posts.create!( title: 'Cold and Snow', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            post8 = lara.posts.create!( title: 'Clothes make you confident', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', comments_counter: 0, likes_counter: 0)
            
    lara.comments.create!(text: 'Wow', post: post1)
    henry.comments.create!(text: 'Well Done ????????????', post: post1)
    merry.comments.create!(text: 'Love ???? it!!!', post: post1)
    lara.comments.create!(text: 'Big like', post: post1)
    merry.comments.create!(text: 'Love ???? it again!!!', post: post1)
    jzy.comments.create!(text: 'Thank you all', post: post1)
    lara.comments.create!(text: 'Wow', post: post2)
    merry.comments.create!(text: 'Bon appetit', post: post2)
    henry.comments.create!(text: 'I want to eat', post: post2)
    lara.comments.create!(text: 'I like ???? food!!!', post: post2)
    merry.comments.create!(text: 'Love ???? it again!!!', post: post2)
    jzy.comments.create!(text: 'Thank you all', post: post2)
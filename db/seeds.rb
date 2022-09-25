# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.all
youte_genres = YouteGenre.all
comment_genres = CommentGenre.all
youtes = Youte.all
comments = Comment.all

Admin.create!(
  email: 'admin@test.com',
  password: 'password'
)

User.create!(
  [
    {email: 'satou@test.com', name: '佐藤', password: 'password'},
    {email: 'suzuki@test.com', name: '鈴木', password: 'password'},
    {email: 'takahasi@test.com', name: '高橋', password: 'password'}
  ]
)

YouteGenre.create!(
  [
    {name: '褒めてください'},
    {name: 'アドバイス求む'}
  ]
)

CommentGenre.create!(
  [
    {name: 'いいね！'},
    {name: 'アドバイス'}
  ]
)


Youte.create!(
  [
    {text: '商談がうまくいきました。', star: '1', user_id: users[0].id, youte_genre_id: youte_genres[0].id },
    {text: 'プログラミングの学習方法でいい方法はありますか？', star: '5', youte_genre_id: youte_genres[1].id, user_id: users[1].id },
    {text: '自炊してお弁当を持ってくることができました！', star: '3', youte_genre_id: youte_genres[0].id, user_id: users[2].id }
  ]
)

Comment.create!(
  [
    {text: 'お疲れ様です！', youte_id: youtes[0].id, genre_id: comment_genres[0].id, user_id: users[1].id },
    {text: 'HTML/CSS教本という本がおすすめです。', youte_id: youtes[1].id, genre_id: comment_genres[1].id, user_id: users[2].id  },
    {text: '勉強する時間を決めておくことが大切です。', youte_id: youtes[1].id, genre_id: comment_genres[1].id, user_id: users[0].id  },
    {text: 'お仕事も頑張って、お弁当作ってえらい！', youte_id: youtes[2].id, genre_id: comment_genres[0].id, user_id: users[0].id  }
  ]
)

Favorite.create!(
  [
    {user_id: users[0].id, comment_id: comments[0].id},
    {user_id: users[1].id, comment_id: comments[1].id},
    {user_id: users[1].id, comment_id: comments[2].id},
    {user_id: users[2].id, comment_id: comments[3].id }
  ]
)


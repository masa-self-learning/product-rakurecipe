#ユーザーを100人生成
User.create!(username: "楽太郎",
             email: "rakurecipe@example.com",
             password: "12345678",
             password_confirmation: "12345678")

99.times do |n|
  username = "楽太郎#{n+1}"
  email =  "rakurecipe#{n+1}@example.com"
  password = "12345678"
  User.create!(username: username,
               email: email,
               password: password,
               password_confirmation: password)
end               

# ユーザー6人のレシピを生成
users = User.order(:created_at).take(6)
10.times do |n|
  title = "カレーライス#{n+1}"
  profile = "家庭的なカレーです#{n+1}"
  body = "野菜を切ります
          野菜と肉を炒めます
          水を入れて、煮込みます
          カレールーを入れて、さらに煮込みます"
  users.each { |user| user.recipes.create!(title: title,
                                           profile: profile,
                                           body: body,
                                           image: File.open("./app/assets/images/home-image.jpg")
                                           ) }
end
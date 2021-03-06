#ゲストユーザーを生成
  User.create!(username: "デモユーザー",
               email: "demo@example.com",
               profile: "デモユーザーです。",
               profile_image: File.open("./app/assets/images/demo-user.png"), 
               profile_bg_image: File.open("./app/assets/images/profile-bg-image.jpg"),
               password: "12345678",
               password_confirmation: "12345678")        

#追加ゲストユーザーを8人生成               
8.times do |n|
  User.create!(username: "デモユーザー#{n+1}",
               email: "demo#{n+1}@example.com",
               profile: "デモユーザー#{n+1}です。",
               profile_image: File.open("./app/assets/images/demo-user.png"), 
               profile_bg_image: File.open("./app/assets/images/profile-bg-image.jpg"),
               password: "12345678",
               password_confirmation: "12345678")
end             

#ユーザーを99人生成             
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
users = User.order(:created_at).take(1)
12.times do |n|
  title0 = "ビーフカレー"
  profile0 = "お肉もたっぷり。辛さと香りの贅沢な一皿"
  body0 = "（1）牛肉は下味の調味料をまぶす。
          （2）じゃがいもとにんじんは小さめの乱切りにする。
          （3）玉ねぎは５ｍｍ幅の薄切りにし、耐熱皿に入れてサラダ油小さじ１（分量外）をかけ混ぜ、ラップをして電子レンジ（６００Ｗ）で１分３０秒加熱する。
          （4）フライパンにサラダ油大さじ1/2を熱して（１）を炒め、焼き色がついたら（３）、（２）を順に加えて炒め、サラダ油大さじ１を足し、小麦粉とカレー粉をふり入れて１～２分炒める。
          （5）（４）に水600mlを加え混ぜ、沸騰したらアクをすくい、やや強めの弱火で１０分煮る。
          （6）醤油を加え、時々混ぜながら２～３分煮る。好みでご飯にかける。"
  
  title1 = "牛肉の野菜炒め"
  profile1 = "牛肉の旨味と野菜のシャキシャキ感が絶品です。"
  body1 = "（1）牛肉に塩コショウ、醤油、酒で下味をつける。
          （2）キャベツはざく切りにして、もやしとレンジで1分加熱する。
          （3）牛肉を炒めたら、キャベツともやしを投入して、塩コショウ・醤油で味付け。
          （4）ごま油を入れてサッと炒める"

  title2 = "麻婆豆腐"
  profile2 = "家庭的な味の中にもほどよい辛みと甜麺醤の甘辛さが引き立つ麻婆豆腐です。"
  body2 = "（1）挽肉をコショウ、甜麺醤、醤油、紹興酒で炒めて、皿に上げておく。
          （2）油をひき、豆板醤、豆豉醬、ニンニク、生姜、ねぎ、甜麺醤、味噌を炒める。
          （3）（1）の挽肉を入れ、鶏がらスープ300ml、紹興酒を入れ煮込む。
          （4）ニラをいてた後、水溶き片栗粉でとろみをつけて、ネギをまぶす。"          

  title3 = "醤油ラーメン"
  profile3 = "家庭的で手軽に作れる本格的醤油ラーメンです。"
  body3 = "（1）鶏皮とラードで香味油を作る。
    （2）豚バラ、鶏ひき肉、昆布、煮干し、ねぎ、水1.2Lを鍋に入れ40分煮込む。
    （3）（2）をザルでこして、冷水で出汁を冷やし余分な油を取り除く。
    （4）（2）の豚バラを醤油、酒、砂糖で煮込み、チャーシューをカエシを作る。
    （5）麺を茹でて、どんぶりに香味油、出汁、カエシを混ぜてスープを作る。
    （6）麺を入れ、チャーシュー、ねぎ、お好みの具材を入れれば完成。"

  title4 = "青菜炒め"
  profile4 = "小松菜のほどよい苦味とオイスターソースが絡んで絶品です。"
  body4 = "（1）小松菜の茎の部分だけをカットします。葉の部分は味噌汁としても使えます。
    （2）小松菜をサッと湯通ししてザルにあげます。
    （3）醤油、オイスターソース、砂糖、すりおろし生姜、酒、鶏ガラスープでタレを用意しておきます。
    （4）小松菜を軽く炒めて、タレを入れます。水溶き片栗粉でとろみをつけたら完成。"

  title5 = "ベーコンペペロンチーノ"
  profile5 = "味付けは塩のみですが、ベーコンの旨味が引き出されておいしいです。"
  body5 = "（1）ベーコンをカリッとするまで炒めます。
    （2）パスタ麺を塩を入れて茹でます。
    （3）弱火でニンニク、唐辛子、オリーブオイルを炒める。
    （4）（3）にパセリを入れて香りをたて、茹で汁を入れて乳化させます。
    （5）パスタ麺を絡めて、さっと炒めます。"

  title6 = "目玉焼き"
  profile6 = "黄身はトロトロに仕上げ、醤油胡椒につけて食べます。"
  body6 = "（1）フライパンに卵を入れて白身を固めます。
    （2）白身がある程度固まったら、水を入れて蓋をします。
    （3）1分ほど蒸したら、さらにあげます。
    （4）醤油・胡椒でタレを作ります。
    （5）目玉焼きを刺身のようにタレにつけて食べます。"

  title7 = "ステーキ"
  profile7 = "牛肉の旨味をしっかり閉じ込めたステーキです。"
  body7 = "（1）牛肉に塩コショウで下味をつける。
    （2）弱火にして、前面を軽く焼き取り出す。1分ほど肉を休ませる。
    （3）弱火のまま、片面を1分毎に焼き、交互に繰り返す。
    （4）肉の内部がちょうどいい温度になったら取り出し、アルミホイルに包み休ませる。
    （5）フライパンに残った肉汁と醤油、みりん、ニンニクでタレを作る。"

  title8 = "オムライス"
  profile8 = "ケチャップライスとオムレツが絶品です。"
  body8 = "（1）玉ねぎ、鶏肉を炒めてからケチャップを入れてさらに炒めます。
    （2）（1）にご飯を入れて、均一に炒めたあと、皿にあげます。
    （3）溶いた卵に塩、胡椒、牛乳を入れます。
    （4）強火にして、溶いた卵を入れ、一気にかき混ぜてとろみをつけます。
    （5）オムレツが完成したら、ケチャップライスにのせて完成。"

  title9 = "チャーハン"
  profile9 = "しっとりパラパラな家庭的なチャーハンです。"
  body9 = "（1）ねぎ、豚肉、溶いた卵、ご飯を用意します。
    （2）豚肉を炒めて、皿にあげておきます。
    （3）強火で溶いた卵にサッと火を通し、ご飯を入れて炒めます。
    （4）パラパラになったら、ねぎ、豚肉、塩、胡椒、旨味調味料を入れて更に炒めます。
    （5）醤油を入れて、さっと炒めたら完成。"

  title10 = "牛丼"
  profile10 = "めんつゆで作るお手軽な牛丼です。"
  body10 = "（1）玉ねぎ、牛肉に生姜、胡椒、塩を入れて炒めます。
    （2）（1）にめんつゆ、水、酒、砂糖を入れて煮込みます。
    （3）どんぶりのご飯の上に牛丼のもとをかければ完成。"

  title11 = "プリン"
  profile11 = "昔ながらの超手軽に作れるカスタードプリンです。"
  body11 = "（1）グラニュー糖、水を煮詰めて水飴を作ります。
    （2）牛乳、卵、グラニュー糖をかき混ぜて、ザルでこします。
    （3）ビンに水飴、（2）を入れて、アルミホイルで蓋をします。
    （4）鍋にお湯を沸かし、（3）を入れ、弱火で8分蒸します。その後、火を止めて10分更に蒸します。
    （5）冷蔵庫に入れて冷やしたら完成。"

  users.each { |user| user.recipes.create!(title: eval("title#{n}"),
                                           profile: eval("profile#{n}"),
                                           body: eval("body#{n}"),
                                           image: File.open("./app/assets/images/recipe-image#{n}.jpg")
                                           ) }
end
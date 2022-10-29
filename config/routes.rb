Rails.application.routes.draw do
  get 'maps/index'
  post "/user/create" => "user#create"
  post "user/:id/update" => "user#update"
  get '/'=>"home#top"
  get "/about"=>"home#about"
  get "/user"=>"user#user"
  get "/user/:id"=>"user#show"
  get "/SignUp" => "user#new"
  get "/user/:id/edit" => "user#edit"
  #GoogleMap
  get "/test"=>"maps#index"

  #PrefectureRoutes
  #北海道・東北
  get "/hokkaido"=>"hokkaidotohoku#hokkaido"
  get "/akita"=>"hokkaidotohoku#akita"
  get "/aomori"=>"hokkaidotohoku#aomori"
  get "/hukushima"=>"hokkaidotohoku#hukushima"
  get "/iwate"=>"hokkaidotohoku#iwate"
  get "/miyagi"=>"hokkaidotohoku#miyagi"
  get "/yamagata"=>"hokkaidotohoku#yamagata"
  #中部
  get "/aiti"=>"chubu#aiti"
  get "/gihu"=>"chubu#gihu"
  get "/hukui"=>"chubu#hukui"
  get "/ishikawa"=>"chubu#ishikawa"
  get "/nagano"=>"chubu#nagano"
  get "/nigata"=>"chubu#nigata"
  get "/shizuoka"=>"chubu#shizuoka"
  get "/toyama"=>"chubu#toyama"
  get "/yamanashi"=>"chubu#yamanashi"
  #関東
  get "/gunma"=>"kanto#gunma"
  get "/ibaragi"=>"kanto#ibaragi"
  get "/kanagawa"=>"kanto#kanagawa"
  get "/saitama"=>"kanto#saitama"
  get "/tiba"=>"kanto#tiba"
  get "/tokyo"=>"kanto#tokyo"
  get "/totigi"=>"kanto#totigi"
  #近畿
  get "/hyogo"=>"kinki#hyogo"
  get "/kyoto"=>"kinki#kyoto"
  get "/mie"=>"kinki#mie"
  get "/nara"=>"kinki#nara"
  get "/osaka"=>"kinki#osaka"
  get "/shiga"=>"kinki#shiga"
  get "/wakayama"=>"kinki#wakayama"
  #九州
  get "/hukuoka"=>"kyushu#hukuoka"
  get "/kagoshima"=>"kyushu#kagoshima"
  get "/kumamoto"=>"kyushu#kumamoto"
  get "/miyazaki"=>"kyushu#miyazaki"
  get "/nagasaki"=>"kyushu#nagasaki"
  get "/ohita"=>"kyushu#ohita"
  get "/okinawa"=>"kyushu#okinawa"
  get "/saga"=>"kyushu#saga"
  #四国
  get "/ehime"=>"shikoku#ehime"
  get "/kagawa"=>"shikoku#kagawa"
  get "/kochi"=>"shikoku#kochi"
  get "/tokushima"=>"shikoku#tokushima"
  #中国
  get "/hiroshima"=>"chugoku#hiroshima"
  get "/okayama"=>"chugoku#okayama"
  get "/shimane"=>"chugoku#shimane"
  get "/tottori"=>"chugoku#tottori"
  get "/yamaguchi"=>"chugoku#yamaguchi"
end

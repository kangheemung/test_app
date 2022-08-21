Rails.application.routes.draw do
  #投稿
  root 'posts#index'

  post 'posts/create'=>'posts#create',as: 'posts'
  #ログイン 
  get 'login'=>'sessions#new'
  post'login'=>'sessions#create' ,as: 'sessions'
  delete 'logout'=>'sessions#destroy'
#マイページ
  get 'mypage'=>'users#mypage',as:'mypage'
  #会員登録
  get 'signup'=>'users#new',as:'signup'
  post 'users/create'=>'users#create',as: 'users'
  #ユーザ一覧
  get 'users/index'=>'users#index'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

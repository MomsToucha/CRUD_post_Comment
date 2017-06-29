Rails.application.routes.draw do
    
    #CREATE
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  
    #READ
  root 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
  
    #DELETE
  post '/posts/destroy/:post_id' => 'posts#destroy'
  
    #UPDATE
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  
    # COMMENTS
    
    ## CREATE
  post '/posts/show/:post_id/comments/create' => 'comments#create'
    ## DESTORY
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
  
end

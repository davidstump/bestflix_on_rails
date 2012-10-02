Bestflix::Application.routes.draw do

  match '/' => 'dashboard#show'
  match '/login' => 'dashboard#auth'
  resources :films
  
end

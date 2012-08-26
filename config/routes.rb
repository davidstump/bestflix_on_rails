Bestflix::Application.routes.draw do

  match '/' => 'dashboard#show'
  resources :films
  
end

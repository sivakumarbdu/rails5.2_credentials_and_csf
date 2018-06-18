Rails.application.routes.draw do
  resources :users
  post 'violation_report' => 'users#violation_report'
  get 'root_test' => 'users#root_test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

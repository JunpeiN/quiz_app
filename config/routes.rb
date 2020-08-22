Rails.application.routes.draw do
  devise_for :users
  root "top#index"
  resources :quizzes do
    collection do
      get "responce"
    end
  end
end

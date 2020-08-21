Rails.application.routes.draw do
  root "top#index"
  resources :quizzes do
    collection do
      get "responce"
    end
  end
end

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: 'devise/sessions#new' #this should be the login page.
  end
  # root :to => 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/companies/:id/company_quizzes/new", to: "company_quizzes#new"
  post "/companies/:id/company_quizzes",    to: "company_quizzes#create"
  get "/users/:id/stats",                   to: "users#stats", as: :stats_user
  get "/companies/:id/leaderboard",         to: "companies#leaderboard", as: :leaderboard
  get "/home",                              to: "users#home", as: :home
  get "/quiz_results/new",                  to: "quiz_results#new"
  post "/quiz_results",                     to: "quiz_results#create"
  get "/subject_areas",                     to: "subject_areas#index", as: :library
  get "/quiz_results/:id",                  to: "quiz_results#show"
  get "/users/:id/rewards",                 to: "users#rewards", as: :rewards_user
  get "/companies/:id/company_quizzes",     to: "companies#company_quizzes", as: :company_quizzes
end

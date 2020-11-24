Rails.application.routes.draw do
 
  devise_for :users
  root to: 'pages#home' #this should be the login page.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/companies/:id/company_quizzes/new", to: "company_quizzes#new"
  post "/companies/:id/company_quizzes",    to: "company_quizzes#create"
  get "/users/:id/stats",                   to: "users#stats"
  get "/companies/:id/leaderboard",         to: "comapanies#leaderboard"
  get "/home",                              to: "users#home"
  get "/quiz_results/new",                  to: "quiz_results#new"
  post "/quiz_results",                     to: "quiz_results#create"
  get "/subject_areas",                     to: "subject_areas#index"
  get "/quiz_results/:id",                  to: "quiz_results#show"
  get "/users/:id/rewards",                 to: "users#rewards"
  get "/companies/:id/company_quizzes",     to: "company_quizzes#index"
end

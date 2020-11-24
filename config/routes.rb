Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home' #this should be the login page.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  GET "/companies/:id/company_quizzes/new", to: "company_quizzes#new"
  POST "/companies/:id/company_quizzes",    to: "company_quizzes#create"
  GET "/users/:id/stats",                    to: "users#stats"
  GET "/companies/:id/leaderboard",         to: "comapanies#leaderboard"
  GET "/home",                              to: "users#home"
  GET "/quiz_results/new",                  to: "quiz_results#new"
  POST "/quiz_results",                     to: "quiz_results#create"
  GET "/subject_areas",                     to: "subject_areas#index"
  GET "/quiz_results/:id",                  to: "quiz-results#show"
  GET "/users/:id/rewards",                 to: "users#rewards"
  GET "/companies/:id/company_quizzes",     to: "company_quizzes#index"
  
end

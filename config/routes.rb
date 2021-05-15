Rails.application.routes.draw do
  get 'exams/new'
  root to: 'enrollments#index'
  resources :enrollments
  resources :students
  resources :attendances
  resources :teachers
  resources :exams
  resources :subjects
  resources :school_years
  resources :marks
  get '/fillmarks', to: 'fillmarks#new'
  get '/results', to: 'fillmarks#display_results', as: 'results'
  put '/results_with_no_marks/',to: 'fillmarks#results_with_no_marks'
  get '/results_with_no_marks/',to: 'fillmarks#results_with_no_marks'
  post '/fillmarks', to: 'fillmarks#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

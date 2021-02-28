Rails.application.routes.draw do
  root to: 'enrollments#index'
  resources :enrollments
  resources :students
  resources :attendances
  resources :teachers
  resources :exams
  resources :subjects
  resources :school_years
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

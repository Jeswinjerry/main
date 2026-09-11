Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/edit'
  get "/courses/:course_id/enrollments/new",
      to: "enrollments#new",
      as: :new_course_enrollment
    root "users#index"
  post "/courses/:course_id/enrollments",
       to: "enrollments#create",
       as: :course_enrollments
  resources :users
    
end
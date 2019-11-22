Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/students", to: "students#index" as: "words"

  # get "/students/new", to: "students#new" as: "new_word"
  
  # get "/students/:id, to: "students#show" as: "word"

  

  resources :students, only: [:index, :show]

  get "students/:id/active", to: "students#activate_student", as: "activate_student"

end

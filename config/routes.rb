Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Write a simple route to serve the GET /ask HTTP request to the ask action of the questions controller.
  get "ask", to: "questions#ask", as: 'asking_question'

   # Write a simple route to serve the get/answer request to the answer controller.
  get "answer", to: "answers#answer"


  # Defines the root path route ("/")
  # root "posts#index"
end

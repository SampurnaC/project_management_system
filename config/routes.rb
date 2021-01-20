Rails.application.routes.draw do
  devise_for :users
  resources :stories do
    # put :accept
    # put :finish
    # put :unstart
    # put :start
    # put :reject
    # put :complete
    resources :comments
  end

  # put "/stories/:id/accept", to: "stories#accept", as: "accepted_stories"
  # put :accept
end

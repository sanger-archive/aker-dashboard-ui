Rails.application.routes.draw do

  root 'dashboard#index'
  get 'dashboard/index'
  health_check_routes

end

Rails.application.routes.draw do
  resources :sensor_readings
  resources :detected_obstacles
  root 'detected_obstacles#index'
end

Rails.application.routes.draw do
  resources :sensor_readings
  resources :detected_obstacles
  root 'sensor_readings#index'
end

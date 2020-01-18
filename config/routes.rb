Rails.application.routes.draw do

root 'sessions#index'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'

get '/signup' => 'admins#new'
post '/signup' => 'admins#create'

  resources :timesheetreports do
    resources :timesheet_entries
  end

  resources :employees
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

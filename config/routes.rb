Rails.application.routes.draw do

root 'sessions#index'

get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
delete '/logout' => 'sessions#destroy'

get '/signup' => 'admins#new'
post '/signup' => 'admins#create'



  resources :timesheetreports do
    resources :timesheet_entries
  end

  resources :timesheet_entries
  resources :employees
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

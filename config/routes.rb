Rails.application.routes.draw do
  resources :timesheetreports
  resources :timesheet_entries
  resources :employees
  resources :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

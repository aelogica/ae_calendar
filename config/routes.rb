AeCalendar::Engine.routes.draw do
  resources :calendars

  root to: 'calendars#index'
end

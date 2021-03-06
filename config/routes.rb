Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#index'
get 'about', to: 'pages#about'
get 'giving', to: 'pages#about'
get 'giving.php', to: 'pages#about'
get 'contact', to: 'contacts#new'
get 'achievements', to: 'pages#achievements'
#post 'contact', to: 'pages#email'
resources :contacts, except: [:new, :index, :edit, :destroy]
#get 'what', to: 'pages#what'
#get 'what.php', to: 'pages#what'
#get 'how', to: 'pages#how'
#get 'how.php', to: 'pages#how'
get 'who', to: 'pages#who'
get 'who.php', to: 'pages#who'
get 'partners', to: 'pages#partners'
#get 'memdexcell', to: 'pages#memdexcell'
#get 'memdexcell.php', to: 'pages#memdexcell'
get 'more', to: 'pages#more'
get 'more.php', to: 'pages#more'
get 'glossary', to: 'pages#glossary'
get 'glossary.php', to: 'pages#glossary'
get 'faq', to: 'pages#faq'
get 'faq.php', to: 'pages#faq'
#get 'ssp', to: 'pages#ssp'
get 'focus', to: 'pages#focus'
get 'focus.php', to: 'pages#focus'
get 'why', to: 'pages#why'
get 'cases', to: 'pages#cases'


resources :users #Website Users


#HCPS Functionality Routes
resources :locations #HCPS locations
get 'maintenance', to: 'pages#maintenance'
post 'maintenance', to: 'orders#choice'
resources :orders #HCPS Maintenance Requests
get 'open', to: 'orders#open'
get 'closed', to: 'orders#closed'

#Site Sessions
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'


end

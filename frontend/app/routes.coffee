module.exports = (match) ->
  match '', 'pages#index'
  match 'about', 'pages#about'
  match 'login', 'pages#login'
  match 'register', 'pages#register'
  match 'orgs', 'orgs#index'
  match 'projects', 'projects#index'
  match 'projects/:id', 'projects#show'


module.exports = (match) ->
  match '', 'projects#index'
  match 'about', 'pages#about'
  match 'login', 'pages#login'
  match 'register', 'pages#register'
  match 'orgs', 'orgs#index'
  match 'projects', 'projects#index'
  match 'projects/:id', 'projects#show'


This is the repository for the alpha-blog app of the Complete Ruby on Rails Developer Course (by Mashrur Rossain)

## Routes:
```console
$ rake routes
```
Output:

| Prefix       | Verb    | URI Pattern               | Controller#Action |
|--------------|---------|---------------------------|-------------------|
| root         | GET     | /pages#home               |                   |
| about        | GET     | /about(.:format)          | pages#about       |
| articles     | GET     | /articles(.:format)       | articles#index    |
|              | POST    | /articles(.:format)       | articles#create   |
| new_article  | GET     |                           | articles#new      |
| edit_article | GET     |                           | articles#edit     |
| article      | GET     | /articles/:id(.:format)   | articles#show     |
|              | PATCH   | /articles/:id(.:format)   | articles#update   |
|              | PUT     | /articles/:id(.:format)   | articles#update   |
|              | DELETE  | /articles/:id(.:format)   | articles#destroy  |
| signup       | GET     | /signup(.:format)         | users#new         |
| users        | GET     | /users(.:format)          | users#index       |
|              | POST    | /users(.:format)          | users#create      |
| edit_user    | GET     | /users/:id/edit(.:format) | users#edit        |
| user         | GET     | /users/:id(.:format)      | users#show        |
|              | PATCH   | /users/:id(.:format)      | users#update      |
|              | PUT     | /users/:id(.:format)      | users#update      |
|              | DELETE  | /users/:id(.:format)      | users#destroy     |          

This is the repository for the first alpha-blog app of the Complete Ruby on Rails Developer Course

rake routes:

Prefix Verb   URI Pattern                       Controller#Action
       root   GET                                 /pages#home
      about   GET    /about(.:format)             pages#about
   articles   GET    /articles(.:format)          articles#index
              POST   /articles(.:format)          articles#create
new_article   GET    /articles/new(.:format)      articles#new
edit_article  GET    /articles/:id/edit(.:format) articles#edit
article       GET    /articles/:id(.:format)      articles#show
              PATCH  /articles/:id(.:format)      articles#update
              PUT    /articles/:id(.:format)      articles#update
              DELETE /articles/:id(.:format)      articles#destroy

Rails.application.routes.draw do

  resources :topics do
     resources :posts, except: [:index]
<<<<<<< HEAD
=======
    #  resources :sponsored_posts, except: [:index]
>>>>>>> bloccit-checkpoint22
   end

  get 'about' => 'welcome#about'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

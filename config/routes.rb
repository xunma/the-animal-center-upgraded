Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals do
    member do
      patch '/mark_as_adopted', to: 'animals#mark_as_adopted', as: :mark_as_adopted
    end
    resources :donations, only: [:new, :create, :index]
  end
  resources :donations, only: [:destroy, :edit, :update]
end

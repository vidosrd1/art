# Below are the routes for madmin
namespace :madmin do
  namespace :action_text do
    resources :rich_texts
  end
  namespace :action_text do
    resources :encrypted_rich_texts
  end
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :attachments
  end
  resources :lists
  resources :cats
  resources :blogs
  namespace :active_storage do
    resources :blobs
  end
  resources :posts
  resources :tags
  resources :taggables
  resources :arts
  resources :articles
  resources :users
  root to: "dashboard#show"
end

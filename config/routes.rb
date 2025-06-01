Rails.application.routes.draw do
  root 'blog_posts#index'

  resources :blog_posts do
    post :create_feedback, on: :member
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
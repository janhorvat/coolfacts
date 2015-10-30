Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'facts/get_fact' => 'facts#get_fact'
    end
  end
end

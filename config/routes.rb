Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/' =>  "home#index"
  get '/term/:term' => "home#term"
  get '/jumia' => "home#jumia"
  get '/konga' => "home#konga"
  get '/home' => "optifront#home"
  get '/websites' => "optifront#getwebsite"
  post '/websites' => "optifront#postwebsite"
  get '/campaigns' => "optifront#getCampaign"
  delete '/campaigns/:id' => "optifront#deleteCampaign"
  post '/campaigns' => "optifront#postCampaigns"
  patch '/campaigns/:id' => "optifront#save"
  
end

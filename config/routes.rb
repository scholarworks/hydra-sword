Hydra::Sword::Engine.routes.draw do
	scope :sword do
		get '/servicedocument',  controller: 'sword/servicedocument', action: :index
		post '/deposit' => 'deposit_form#create', as: :deposit_form_index
	end
end
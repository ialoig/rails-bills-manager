Rails.application.routes.draw do
  	resources :companies
  	resources :bills
  	resources :statistics

  	resources :charts, only: [] do
		collection do
	    	get 'bills_amount_by_year'
	    	get 'bills_amount_by_company'
	  	end
  	end

  	root "statistics#index"
end

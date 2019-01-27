Rails.application.routes.draw do
  	resources :companies
  	resources :bills
  	resources :dashboard

  	resources :charts, only: [] do
		collection do
	    	get 'bills_amount_by_year'
	    	get 'bills_amount_by_company'
        get 'bills_total_amount_by_companies'
	  	end
  	end

  	root "dashboard#index"
end

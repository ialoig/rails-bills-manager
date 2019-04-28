Rails.application.routes.draw do
  	resources :companies
  	resources :bills
  	resources :dashboard

  	resources :charts, only: [] do
		collection do
	    	get 'bills_amount_by_year'
	    	get 'bills_amount_by_company'
        get 'amount_by_company_last_six'
        get 'bills_total_amount_by_companies'
	  	end
  	end

  	root "dashboard#index"

    # change names as login, logout and registration from default values
    devise_for :users, path_names: {
      sign_in: 'login', sign_out: 'logout', sign_up: 'registration'
    }
end

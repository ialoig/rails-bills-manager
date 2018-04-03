class Company < ApplicationRecord

  has_many :bills,
  	-> { order('created_at desc').limit(100) }, 
  	class_name: "Bill",
  	dependent: :destroy
end

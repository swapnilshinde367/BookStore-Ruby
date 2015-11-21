class Publisher < ActiveRecord::Base
	has_many	:books
	validates 	:name, 		presence: true, length: { minimum: 1, maximum: 50 }
	validates 	:email,		presence: true, length: { maximum: 50 }
	validates 	:phone,		presence: true, length: { maximum: 15 }
	validates 	:address,	presence: true, length: { maximum: 100 }
end

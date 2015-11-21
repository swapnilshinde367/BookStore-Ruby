class Book < ActiveRecord::Base
	belongs_to	:author
	belongs_to	:publisher
	validates 	:name, 				presence: true, length: { minimum: 1, maximum: 50 }
	validates 	:description,		presence: true, length: { maximum: 100 }
	validates 	:price,				presence: true, length: { maximum: 5 }
	validates 	:published_date,	presence: true
	validates 	:author_id,			presence: true
	validate 	:validate_author_id
	validates 	:publisher_id,		presence: true
	validate 	:validate_publisher_id

	private

	  def validate_author_id
	    errors.add( :author_id, 'not found' ) unless Author.exists? ( self.author_id )
	  end
	  def validate_publisher_id
	    errors.add( :publisher_id, 'not found' ) unless Publisher.exists? ( self.publisher_id )
	  end
end

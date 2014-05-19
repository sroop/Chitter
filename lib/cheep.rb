class Cheep

	include DataMapper::Resource

	property :id, Serial
	property :cheep, Text
	property :created_at, DateTime
 	
	belongs_to :user
end
	
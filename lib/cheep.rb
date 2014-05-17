class Cheep

	include DataMapper::Resource

	property :id, Serial
	property :cheep, Text
	property :created_at, DateTime
 	
 	has 1, :user, through: Resource

end
	
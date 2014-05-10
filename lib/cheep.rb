class Cheep

	include DataMapper::Resource

	property :id, Serial
	property :user, String
	property :username, String
	property :cheep, Text
	property :created_at, DateTime

end

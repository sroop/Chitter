require 'cheep'
require 'spec_helper'

describe Cheep do

	context "Demonstration of how datamapper works" do

		it 'adding a cheep' do
	 		expect(Cheep.count).to eq(0)
	 		Cheep.create(cheep: "Cheep, Cheep!")
	 		expect(Cheep.count).to eq(1)
	 		example_cheep = Cheep.first
	 		expect(example_cheep.cheep).to eq("Cheep, Cheep!")
	 		example_cheep.destroy
	 		expect(Cheep.count).to eq(0)
	 	end

  	end
end
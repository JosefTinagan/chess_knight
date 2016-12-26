require 'spec_helper'

module ChessKnight
	describe Knight do 
		context "#get_search_obj" do

		end

		context "#get_route" do
			it "get route function test" do
				k = Knight.new
				tmp = k.get_route([3,3],[4,3])
				expect(tmp).to eq nil
			end
		end
	end
end
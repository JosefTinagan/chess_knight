require 'spec_helper'

module ChessKnight
	describe Square do
		context "#initialize" do
			it "initialize method test" do
				s = Square.new(1,2)
				expect(s.x).to eq 1
				expect(s.y).to eq 2
				expect(s.parent_obj).to eq nil
				expect(s.children).to eq []
			end
		end

		context "#make_children" do

		end
	end
end
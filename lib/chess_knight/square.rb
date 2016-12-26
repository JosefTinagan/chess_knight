module ChessKnight
	class Square
		attr_reader :x, :y, :parent_obj, :children

		def initialize(x, y, parent_obj = nil)
			@x = x
			@y = y
			@parent_obj = parent_obj
			@children = []
		end

		def make_children
			candidates = []
			candidates.push([@x + 2, @y - 1]).push([@x + 2, @y + 1]).push([@x + 1, @y - 2])
			.push([@x + 1, @y + 2]).push([@x - 1, @y - 2]).push([@x - 1, @y + 2]).push(
			[@x - 2, @y - 1]).push([@x - 2, @y + 1])

			children = candidates.select{|cand| cand[0] >= 0 && cand[0] <= 7 && cand[1] >= 0 && 
				cand[1] <= 7}
			children = children.map{|child_coords| Square.new(child_coords[0],child_coords[1], self)}
			@children = children
		end
	end
end
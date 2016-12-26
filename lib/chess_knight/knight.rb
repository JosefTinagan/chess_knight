module ChessKnight
	class Knight
		def get_search_obj(search_obj, root_obj)
			queue = []
			queue << root_obj
			loop do
				current = queue.shift
				return current if current.x == search_obj.x && current.y == search_obj.y
				current.make_children.each{|child| queue << child}
			end
		end

		def get_route(root_arr, search_arr)
			search_obj = Square.new(search_arr[0], search_arr[1])
			root_obj = Square.new(root_arr[0], root_arr[1])
			result = get_search_obj(search_obj, root_obj)

			route = []
			route.unshift([search_obj.x, search_obj.y])
			current = result.parent_obj
			until current == nil
				route.unshift [current.x, current.y]
				current = current.parent_obj
			end
			puts "You made it in #{route.length - 1} moves! Here's your route:"
			route.each {|square| puts square.inspect}
			return nil
		end
	end
end
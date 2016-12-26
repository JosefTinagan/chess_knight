require_relative '../lib/chess_knight.rb'

x = [0,0]
y = [1,2]
ChessKnight::Knight.new.get_route(x,y)
# frozen_string_literal: true

require 'pry-byebug'
require_relative 'board'
require_relative 'knight'

@knight = Knight.new

# accepts start and end squares of chess board [(0-7), (0-7)]
# returns the shortest path (only gives one if multiple are possible)
# example:  knight_moves([0,1], [4,7])
# rubocop:disable Metrics/MethodLength
def knight_moves(start, finish)
  paths = [[start]]

  loop do
    path = paths.shift
    moves = @knight.legal_moves(path.last)
    moves.each do |square|
      return path.push(square) if square == finish

      # possible to skip this for squares that were already checked
      new_path = path.dup
      new_path.push(square)
      paths.push(new_path)
    end
  end
end


puts "\nknight_moves([6, 0], [3, 3])"
p knight_moves([6, 0], [3, 3])

puts "\nknight_moves([0, 0], [7, 7])"
p knight_moves([0, 0], [7, 7])

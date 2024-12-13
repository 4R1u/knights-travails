# frozen_string_literal: true

def connected_squares(coords)
  offsets = [[1, 2], [2, 1], [2, -1], [1, -2],
             [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
  offsets.map { |offset| [coords[0] + offset[0], coords[1] + offset[1]] }
         .filter { |move| (0..7).cover?(move[0]) && (0..7).cover?(move[1]) }
end

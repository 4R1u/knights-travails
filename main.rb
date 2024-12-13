# frozen_string_literal: true

def connected_squares(coords)
  offsets = [[1, 2], [2, 1], [2, -1], [1, -2],
             [-1, -2], [-2, -1], [-2, 1], [-1, 2]]
  offsets.map { |offset| [coords[0] + offset[0], coords[1] + offset[1]] }
         .filter { |move| (0..7).cover?(move[0]) && (0..7).cover?(move[1]) }
end

def knight_moves_arr(start, finish)
  queue = [[start, []]]
  loop do
    return (queue[0][1]) if queue[0][0] == finish

    connected_squares(queue[0][0]).each do |move|
      queue << [move, queue[0][1] + [queue[0][0]]]
    end
    queue.delete_at 0
  end
end

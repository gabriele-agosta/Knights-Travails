require_relative 'knight'

class Board

  def initialize() end

  def knight_moves(start, destination)
    current = make_graph(start, destination)
    history = make_history(start, current)
    print_result(history)
  end

  private

  def make_graph(start, destination)
    queue = [Knight.new(start)]
    current = queue.shift

    until destination == current.position
      current.children.each do |value|
        knight = Knight.new(value, current)
        queue << knight
      end
      current = queue.shift
    end

    return current
  end

  def make_history(start, current)
    history = []

    until start == current.position
      history << current.position
      current = current.parent
    end
    history << start

    return history
  end

  def print_result(history)
    puts "You managed to reach the point in #{history.length} moves!"
    puts "The path used was: #{history}"
  end

end
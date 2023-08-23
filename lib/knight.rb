class Knight
  attr_accessor :children
  attr_reader :parent, :position

  def initialize(position, parent = nil)
    @position = position
    @children = next_moves()
    @parent = parent
  end

  private

  def next_moves()
    permutations = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [-1, 2], [1, -2], [-1, -2]]
    children = []

    permutations.each do |permutation|
      perm_x, perm_y = permutation.each { |coord| coord }
      curr_x, curr_y = @position.each { |coord| coord }
      children << [curr_x + perm_x, curr_y + perm_y] if (curr_x + perm_x).between?(0, 7) && (curr_y + perm_y).between?(0, 7)
    end

    return children
  end
end
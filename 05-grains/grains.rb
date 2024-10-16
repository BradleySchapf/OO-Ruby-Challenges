class Grains
  # Calculate the number of grains on a given square
  def self.square(n)
    2**(n - 1)  # 2 raised to the power (n-1)
  end

  # Calculate the total number of grains on the chessboard
  def self.total
    (1..64).reduce(0) { |sum, square| sum + square(square) }
  end
end

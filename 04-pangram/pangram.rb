class Pangram
  def self.is_pangram?(sentence)
    # Define the alphabet set
    alphabet = ('a'..'z').to_a
    # Convert sentence to lowercase, remove non-alphabet characters, and split into characters
    letters = sentence.downcase.chars.select { |char| char.match(/[a-z]/) }
    # Check if the unique letters in the sentence cover the entire alphabet
    (alphabet - letters.uniq).empty?
  end
end

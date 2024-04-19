def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |acc, word|
    string.split.each do |initial_word|
      acc[word] += 1 if initial_word.downcase.include?(word)
    end
    acc
  end
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)

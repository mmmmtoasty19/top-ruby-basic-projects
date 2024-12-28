def substrings(word, dict)
  dict.reduce(Hash.new(0)) do |output, string|
    word_arr=word.split(" ")
    word_arr.each do |indiv|
      if indiv.include?(string)
        output[string]+=1
      end 
    end
    output
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
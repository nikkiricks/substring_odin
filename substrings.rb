dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
    downcase_string = string.downcase
    hash = {}
    
    dictionary.each do |word|
        number_of_matches = downcase_string.scan(word).count
        if number_of_matches > 0
            hash[word] = number_of_matches
        end
    end
    
    hash
end
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
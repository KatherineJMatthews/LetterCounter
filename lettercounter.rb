#lettercounter.rb
# This class should take in a string and then return
# a string of letters that were in the original string
# in order of most used to least used
# If two letters appear the same number of times
# in the original string, they should appear in
# the new string alphabetized

class LetterCounter
    def count word
        word.downcase!
        freqs = {}
        freqs.default = 0

        #find the frequency of each char and count in the freqs hash
        word.each_char do |char| 
            freqs[char] += 1
        end

        #sort by frequency then character and throw into an array
        result =  []
        result = freqs.sort_by { |char, value| [-value, char] }

        #Throw each char into a string
        answer = ""
        result.each do |char, value|
        answer << char
        end
        return answer
        
    end
end

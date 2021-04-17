class PigLatinizer
    attr_accessor :words
    def initialize(text)
        @words = text
    end

    def piglatinize
        list=[]
        @words.split(' ').each do |word|
            if word[0].downcase == 'a' or word[0].downcase == 'e' or word[0].downcase == 'i' or word[0].downcase == 'o' or word[0].downcase == 'u'
                new_word1 = word + "way"
                list << new_word1
            else
                new_word2 = word.split('').rotate(1).join + "ay"
                list << new_word2
            end
        end
        list.join(' ')


    end
end
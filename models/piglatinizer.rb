class PigLatinizer

    #do I need attr_reader?

    def text_define(text)
        if text.split(/\s/).length == 1
            pig_latinize_word(text)
        elsif text.split(/\s/).length > 1  
            pig_latinize_string(text)
        end
    end

    def pig_latinize_word(text)
        #first_letter = text.split('')[0]
        if ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U", "H"].include?(text.split('')[0])
            "#{text}way"
        else 
            #second_letter = text.split('')[1]
            #third_letter = text.split('')[2]
            #fourth_letter = text.split('')[3]
            if ["a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "H", "Y"].include?(text.split('')[1])
                "#{text[1..-1]}#{text.split('')[0]}ay"
            elsif ["a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "H", "Y"].include?(text.split('')[2])
                "#{text[2..-1]}#{text.split('')[0]}#{text.split('')[1]}ay" 
            elsif ["a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "H", "Y"].include?(text.split('')[3])
                "#{text[3..-1]}#{text.split('')[0]}#{text.split('')[1]}#{text.split('')[2]}ay"
            end
        end
    end
    #th, ch, sh combos have to stay together

    def pig_latinize_string(text)
        a = text.split(' ')
        b= a.map {|word| pig_latinize_word(word)}
        b.join(' ')
    end

end



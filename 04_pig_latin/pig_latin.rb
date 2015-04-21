def translate(phrase)
    words = phrase.split()
    words.each do |word|
        if word.start_with?('a','e','i','o','u')
            word << "ay"
        else
            while not word.start_with?('a','e','i','o','u')
                if word.start_with?('qu')
                    word.insert(-1, 'qu')
                    word[0..1] = ''
                else
                    word.insert(-1, word[0])
                    word[0] = ''
                end
            end
            word << "ay"
            if word != word.downcase
                word.downcase!
                word.capitalize!
            end
        end
    end
    words.join(" ")
end


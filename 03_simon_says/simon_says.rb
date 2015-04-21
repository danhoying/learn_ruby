def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, num_repeats = 2)
    ((phrase + " ") * num_repeats).rstrip
end

def start_of_word(word, num_letters)
    word.slice(0, num_letters)
end

def first_word(phrase)
    phrase.gsub(/\s.*/, '')
end

def titleize(phrase)
    little_words = %w(and in the of a an over)
    phrase.capitalize.split.map{|w| little_words.include?(w) ? w : w.capitalize}.join(' ')
end

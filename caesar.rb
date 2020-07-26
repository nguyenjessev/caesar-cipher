require 'pry'

def caesar(text, offset)
    result = ""
    text.each_byte do |c|
        result += (c + offset).chr
    end

    return result
end
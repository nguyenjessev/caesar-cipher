require 'pry'

def caesar(text, offset)
  result = ""
  text.each_byte do |c|
    if (c >= 65 && c <= 90) || (c >= 97 && c <= 122)
      if c < 97
        range = 65
      else
        range = 97
      end
      newC = c + offset - range
      newC %= 26
      newC += range
      result += newC.chr
    else
      result += c.chr
    end
  end
  return result
end
# frozen-string-literal: true

def caesar(text, offset)
  result = ''
  text.each_byte do |c|
    if (c >= 65 && c <= 90) || (c >= 97 && c <= 122)
      range = if c < 97
                65
              else
                97
              end
      new_c = c + offset - range
      new_c %= 26
      new_c += range
      result += new_c.chr
    else
      result += c.chr
    end
  end
  result
end

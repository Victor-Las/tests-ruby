def translate (s)
  s.split(" ").map{|w| 
    if w[0] =~ /[aeiou]/ then w = w + "ay"
    elsif w[0] !=~ /[aeiou]/ && w[1] =~ /[aeiou]/ && w[0,2] != "qu"
      l = w[0] 
      w[0] = ''
      w = w + l + "ay"
    elsif w[0,2] !=~ /[aeiou]/ && w[2] =~ /[aeiou]/ && w[1,2] != "qu" || w[0,2] == "qu"
      l = w[0,2] 
      w[0,2] = ''
      w = w + l + "ay"
    else
      l = w[0,3] 
      w[0,3] = ''
      w = w + l + "ay"
    end
    }
  .join(" ")
end

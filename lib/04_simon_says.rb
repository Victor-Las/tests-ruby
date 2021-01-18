def echo (s)
  s
end

def shout (s)
  s.upcase
end

def repeat (s, a = 2)
  "#{s}" + " #{s}" * (a - 1)
end

def start_of_word (s, a)
  s[0..(a - 1)]
end

def first_word (s)
  s.split.first
end

def titleize (s)
  s.capitalize.split(" ").map {|word| if word.length <= 3 then word else word.capitalize end}.join(" ")
end



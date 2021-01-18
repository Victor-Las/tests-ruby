#Méthode longue
def time_string (s)
  s.to_i
  inf = Float::INFINITY
  case s
  when 0...60
    if s < 10
      "00:00:0#{s}"
    else
      "00:00:#{s}"
    end
  when 60...3600
    m = s / 60
    ss = s % 60
    if m < 10 && ss < 10
      "00:0#{m}:0#{ss}"
    elsif m < 10 && ss >= 10
      "00:0#{m}:#{ss}"
    elsif ss < 10
      "00:#{m}:0#{ss}"
    else
      "00:#{m}:#{ss}"
    end
  when 3600..inf
      h = s / 3600
      hr = s % 3600
      m = hr / 60
      ss = hr % 60
    if h < 10
      if m < 10 && ss < 10
        "0#{h}:0#{m}:0#{ss}"
      elsif m < 10 && ss >= 10
        "0#{h}:0#{m}:#{ss}"
      elsif ss < 10
        "0#{h}:#{m}:0#{ss}"
      else
        "0#{h}:#{m}:#{ss}"
      end
    else
      if m < 10 && ss < 10
        "#{h}:0#{m}:0#{ss}"
      elsif m < 10 && ss >= 10
        "#{h}:0#{m}:#{ss}"
      elsif ss < 10
        "#{h}:#{m}:0#{ss}"
      else
        "#{h}:#{m}:#{ss}"
      end
    end
  end
end

#Méthode courte
def time_string (s)
  h = s / 3600
  m = s % 3600 / 60
  sr = s % 3600 % 60
  ary = []
  if h < 10 then ary << "0#{h}" else ary << "#{h}" end
  if m < 10 then ary << "0#{m}" else ary << "#{m}" end
  if sr < 10 then ary << "0#{sr}" else ary << "#{sr}" end
  ary.join(":")
end




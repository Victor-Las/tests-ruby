def ftoc (f)
  c = (f - 32) * 5/9
  return c.to_f
end

def ctof (c)
  f = (c * 1.8) + 32
  return f.to_f 
end

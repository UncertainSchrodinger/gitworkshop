def i_will_conflict
  this = "is going to be fine"
  puts this
  i_will_remain
end

def i_will_remain
  puts "hey hey hey"
end

i_will_conflict

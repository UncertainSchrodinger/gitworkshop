def i_will_conflict
  this = "is going to be fine"
  puts this
end

def feature_a
  puts "debug"
end

def feature_b
  puts "debug"
end

i_will_conflict

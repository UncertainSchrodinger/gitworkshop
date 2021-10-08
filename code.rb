def i_will_conflict
  this = "is going to be fine"
  puts this
  feature_a
  feature_b
end

def feature_a
  puts "debug"
end

def feature_b
end

i_will_conflict

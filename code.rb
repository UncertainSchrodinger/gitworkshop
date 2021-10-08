def i_will_conflict
  this = "is going to be fine"
  puts this

  feature_a
<<<<<<< HEAD
  feature_b
=======
>>>>>>> b32fd92... Stuff for feature-a
end

def feature_a
end

def feature_b
end

def feature_a
  puts "debug"
end

i_will_conflict

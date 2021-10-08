def i_will_conflict
<<<<<<< HEAD
  this = "is going to be fine"
  puts this
=======
  puts something
  something = "is going to be wrong"
>>>>>>> 59f42d0... This commit will conflict
end

i_will_conflict

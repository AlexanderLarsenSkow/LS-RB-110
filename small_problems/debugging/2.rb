def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# Calling chars on the string creates an entirely new object.
# c in the block does not reference the same characters in teh string, so it does not mutate them.
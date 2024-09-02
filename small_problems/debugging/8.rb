# Password

# What is the error here?
# Also, once the error is solved, does the log in actually work as expected?

# Solved the exception, since the program wasn't passing around the password variable or setting any parameters in the methods.
# Authentication failing when trying to log in, however.
# Was an issue where we weren't saving the password value earned from set_password. 
# This is rectified by reassigning the password variable to set_password during invocation on the last few lines.

password = nil

def set_password(password)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password(password)
end

verify_password(password)
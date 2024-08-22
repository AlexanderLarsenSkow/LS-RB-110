# Stack Machine Interpretation

# PEDAC

# Problem:
	# Expected Input: String Command
	# Expected Output: Some function based on stack and register

	# Rules:
		# Explicit:
			# Write a method that takes a string as a command and performs a register / stack function with that command.

		# Implicit:
			# Use conditionals to Write "If this command"... => execute command

# Examples:

# Data Structure:
	# Arrays

# Algorithm:
	# FIRST
	# Create empty register array.
	# Create empty stack array.

		# Command n
			# push a value into the register

		# Push
			# Put register value into stack

		# ADD
			# Remove last value from stack
			# Add this value to register value
			# Store it in register

		# SUB
			# Remove the last value from the stack
			# Minus this value from the register value
			# Store it in the register

		# MULT
			# Remove the last value from the stack
			# Multiply this value from the register value
			# Store it in the register

		# DIV
			# Remove the last value from the stack
			# Divide this value from the register value
			# Store it in the register

		# MOD (same)

		# POP
			# Remove top value from stack and place it in register

		# PRINT
			# output the register value

		# minilang
			# Create empty array register
			# Create empty array stack
			# Create 1 parameter command
			# Split command by word
			# Iterate through the this array of words
			# If the word is a number, set the first value of register equal to this number.
			# If Command is equal to a method, call that method.

# Code:

def n(register, n)
	register[0] = n
end

def PUSH(register, stack)
	stack << register[0]
end

def ADD(register, stack)
	register[0] += stack.pop
end

def SUB(register, stack)
	register[0] -= stack.pop
end

def MULT(register, stack)
	register[0] *= stack.pop
end

def DIV(register, stack)
	register[0] /= stack.pop
end

def MOD(register, stack)
	register[0] %= stack.pop
end

def POP(register, stack)
	register[0] = stack.pop
end

def PRINT(register)
	puts register[0]
end

def minilang(command)
	register = [0]
	stack = []

	command.split.each do |part|
		if part.to_i.to_s == part
			register[0] = part.to_i

		else
			case part
			when "PUSH" then PUSH(register, stack)
			when "ADD" then ADD(register, stack)
			when "SUB" then SUB(register, stack)
			when "MULT" then MULT(register, stack)
			when "DIV" then DIV(register, stack)
			when "MOD" then MOD(register, stack)
			when "POP" then POP(register, stack)
			when "PRINT" then PRINT(register)
			end
		end
	end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
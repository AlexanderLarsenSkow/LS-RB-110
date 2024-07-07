# Remove people with age 100 and greater #reject

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#ages.reject! { |name, age| age > 100}

p ages # => {'Herman' => 32, 'Lily' => 30, 'Eddie' => 10}



# Array #reject is non-mutating.
# Array #reject! is mutating.

#ages.keep_if { |_, age| age < 100 }

ages.select!{ |_, age| age < 100 }

p ages


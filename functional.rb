states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

def urlify(string)
  string.downcase.split.join("-")
end

# convert state names to url form
  # imperative function
def create_urls_imperative(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end

p create_urls_imperative(states)

  # functional version with map

def create_urls_functional(states)
  states.map do |state|
    urlify(state)
  end
end

def create_urls_functional_two(states)
  states.map { |state| urlify(state) }
end

p create_urls_functional(states)
p create_urls_functional_two(states)





# find state names consisting of only one word
  # singles: imperative version

def find_singles_imperative(states)
  singles = []
  states.each do |state|
    if state.split.count == 1
      singles << state
    end
  end
  singles
end

p find_singles_imperative(states)

  # singles: functional version with select

def find_singles_functional(states)
  states.select { |state| state.split.length == 1 }
end

p find_singles_functional(states)





# calculate sum of array of integers
  # imperative version

def sum_numbers_imperative(numbers)
  total = 0
  numbers.each { |number| total += number }
  total
end

p sum_numbers_imperative(1..10)

  # functional version with reduce

def sum_numbers_functional(numbers)
  numbers.reduce(0) { |total, element| total += element }
end

p sum_numbers_functional(1..10)





# make a hash with state names mapping to their letter counts
  # imperative version

def make_state_hash_imperative(states)
  lengths = {}
  states.each { |state| lengths[state] = state.length }
  lengths
end

puts make_state_hash_imperative(states)

  # functional version with reduce

def make_state_hash_functional(states)
  states.reduce({}) { |lengths, state| lengths[state] = state.length; lengths }
end

puts make_state_hash_functional(states)

list = ["stuff", "things", "garbage"]

def my_each(array)
  i = 0
while i < array.length 
  yield(array[i])
  i = i + 1
  end

my_each(list) {|i| puts "So I think #{i} is a piece of shit"}

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(llst) {|i| "Hello #{i} what's up?"}
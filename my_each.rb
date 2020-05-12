peeps = ['arel', 'jon', 'logan', 'spencer']


def my_each(array)
  i = 0
  while i < array.length
# The "while" method will always return a value of => nil"
    yield(array[i])
    i = i + 1
  end
end

my_each(list) {|i| return "Don't touch my #{i}!!!"}

# Use the collection method 
# To make the *return-value* the answer you want
# instead of "=> nil"

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(list) {|i| "You're my precious #{i}."}
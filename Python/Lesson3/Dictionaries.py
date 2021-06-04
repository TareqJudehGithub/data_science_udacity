'''
Dictionaries And Identity Operators
 Dictionaries (dict)
 A dictionary is a mutable *1unorderd data type that stores mappings of unique keys to values.
  - Because dicts keys are used to index values, they must be unique and immutable.
  - Dictionaries store pairs of elements: key and values. so dict works well when
    there is a linkage between each holding and the information.
  - *2Dictionaries can have keys of any immutable type, data types like string, integers or
    tuples, but not lists; lists are mutable.
  - It's not even necessary for every key to have the same type!
  - dictionary = {key: value)
    Example of a dictionary:
        >>> elements = {'hydrogen': 1, 'helium': 2, 'carbon': 6}

  - We can look up a dictionary value or insert a new one, by including a key between
  square brackets as an argument.
        Example:
            >>> print(elements['carbon'])      #prints the value mapped to 'carbon'.
            >> 6
            >>> elements['carbon'] = 12     # adds a new value to 'carbon'.
            >>> print(elements['carbon'])
            >>> 12

  - We check if a key is in a dictionary, using the 'in' keyword.
            >>> 'helium' input() elements
            >>> True
  -  Dicts have a related method that's also useful: get().
      get looks up values in a dictionary, but unlike square brackets, get returns None (or
      a default value of your choice) if the key isn't found, instead of returns an *3error.
            >>> elements.get('dilithium')
            >>> None
  Identity operators:
     keyword    Operator
     is         evaluates if both sides have the same identity.
     is not     is not evaluates if both sides have different identities.

    *1  Since dicts are unordered, therefor they don't have a first key.
        new_dict[0] >>> error

    *2  In Python, any immutable object (such as an integer, boolean, string, tuple) is hashable, meaning
        its value does not change during its lifetime. This allows Python to create a unique hash value to
        identify it, which can be used by dictionaries to track unique keys and sets to track unique values. This
        is why Python requires us to use immutable datatypes for the keys in a dictionary.
        List are mutable, and thus cannot be hashed and used as dictionary keys.

    *3  If you expect lookups to sometimes fail, get() might be a better tool than normal square bracket
        lookups because errors can crash your program.
'''

new_dictionary = dict()
elements = {'hydrogen': 1, 'helium': 2, 'carbon': 6}
print(elements)

print('')
# add a new element to a dict:
elements['iron'] = 4
print(elements)

print('')
# change an element value:
elements['helium'] = 3
print(elements)

print('')
# checks if an element exist in a dict:
print('hydrogen' in elements)

print('')
# checks if an element key equals its value in a dict:
print(elements['hydrogen'] is 1)    # >>> True
print(elements['carbon'] is not 10) # >>> True

print('')
# get()
print('''dict.get('key', 'custom user message') returns None instead of returning an error, in case
the key provided as an argument was not in the dict.

example: print(elements.get('copper', 'no such key found'))''')
print(f">>> {elements.get('copper', 'no such key found')}")


'''
Equality vs. Identity:  == vs is
    a = [1, 2, 3]
    b = a
    c = [1, 2, 3]
    
    print(a == b)   >>> True
    print(a is b)   >>> True
    print(a == c)   >>> True
    print(a is c)   >>> False
     
- == Checks for quantity, while is checks for identity (the value stored in memory).
- List a and list b are equal and identical.
- List c is equal to a (and b for that matter) since they have the same contents. But
- a and c (and b for that matter, again) point to two different objects, i.e., they aren't 
  identical objects.
That is the difference between checking for equality vs. identity.
'''
print('\n')

# Quiz: More with Dictionaries
animals = {
    'dogs': [20, 10, 15, 8, 32, 15],
    'cats': [3, 4, 2, 8, 2, 4],
    'rabbits': [2, 3, 3],
    'fish': [0.3, 0.5, 0.8, 0.3, 1],
    11: 'James'
}
print(animals['dogs'][3])   # >>> 8
# print(animals[3]) >>> Error
print(animals[11])  # >>> James

print('\n')
new_tuple = 1, 'tareq', 3, 4
print(new_tuple)
print(new_tuple[1:3])


'''
Dict vs Set
 - Both dicts and sets are defined by a curly bracers {}.
 - A set is defined as a sequence of elements separated by commas, while
   a dict is defined  as sequence of key, value pairs marked with colons,
   and separated by commas.
 - Defining a variable with an empty set of curly braces like this: 
   a = {}, Python will assign an empty dictionary to that variable.  
 - Use set() and dict() to define empty sets and dictionaries as well.
'''

print('')
# An example of a dict containing multiple data type keys:
test_dict = {
    'name': 'Tareq',
    'age': 45,
    'kids': ['Dina', 'Leen', 'Goldie', 'Peter', 'Totti'],
    ('a', 'b', 'c'): [1, 2, 3]
}
print(test_dict)
print(test_dict['age'])                 # >>> 45
print(test_dict[('a', 'b', 'c')][0])    # >>> 1
print(test_dict['kids'][0:2])           # >>> ['Dina', 'Leen']

print('')
'''
Compound Data Structures
We can include containers in other containers to create compound data structures. 
'''
# Add a new record to a dict:
test_dict['Address'] = {
    'Street': 'Al-Sabr',
    'Area': 'Al-Rawabi',
    'City': 'Amman',
    'Country': 'Jordan'
    }

# get the 'Address' dictionary:
print(test_dict['Address'])


print('')
# Look up the 'Area' key in 'Address' element.
print(test_dict['Address']['Area'])
print('')
# We can also add new key, value pairs using setdefault() method.
test_dict.setdefault('mobile', '0796969904')
print(test_dict)

print('')
# Remove a key from a dict:
test_dict.pop(('a', 'b', 'c'), 'key not found')
print(test_dict)


print('\n')
# Quiz: Adding Values to Nested Dictionaries

new_elements = {

    'hydrogen': {'number': 1, 'weight': 1.00794, 'symbol': 'H'},
    'helium': {'number': 2, 'weight': 4.002602, 'symbol': 'He'}
}
print(new_elements)
new_elements['hydrogen']['is_noble_gas'] = False
new_elements['helium']['is_noble_gas'] = True
print(new_elements['hydrogen']['is_noble_gas'])
print(new_elements['helium']['is_noble_gas'])
print(new_elements)

print('\n')
# Quiz: Count Unique Words
verse = "if you can keep your head when all about you are losing theirs and blaming it on you   if you can trust yourself when all men doubt you     but make allowance for their doubting too   if you can wait and not be tired by waiting      or being lied about  don’t deal in lies   or being hated  don’t give way to hating      and yet don’t look too good  nor talk too wise"
print(verse, '\n')

# split verse into list of words
verse_list = verse.split()
print(verse_list, '\n')

# convert list to a data structure that stores unique elements
verse_set = set(verse_list)
print(verse_set, '\n')

# print the number of unique words
num_unique = len(verse_set)
print(num_unique, '\n')

print('\n')
# Quiz: Verse Dictionary
verse_dict = {'if': 3, 'you': 6, 'can': 3, 'keep': 1, 'your': 1, 'head': 1, 'when': 2, 'all': 2, 'about': 2, 'are': 1, 'losing': 1, 'theirs': 1, 'and': 3, 'blaming': 1, 'it': 1, 'on': 1, 'trust': 1, 'yourself': 1, 'men': 1, 'doubt': 1, 'but': 1, 'make': 1, 'allowance': 1, 'for': 1, 'their': 1, 'doubting': 1, 'too': 3, 'wait': 1, 'not': 1, 'be': 1, 'tired': 1, 'by': 1, 'waiting': 1, 'or': 2, 'being': 2, 'lied': 1, 'don\'t': 3, 'deal': 1, 'in': 1, 'lies': 1, 'hated': 1, 'give': 1, 'way': 1, 'to': 1, 'hating': 1, 'yet': 1, 'look': 1, 'good': 1, 'nor': 1, 'talk': 1, 'wise': 1}
print(verse_dict, '\n')


# find number of unique keys in the dictionary
num_keys = len(verse_dict)
print(num_keys)

# find whether 'breathe' is a key in the dictionary
contains_breathe = 'breathe' in verse_dict
print(contains_breathe, 'There no key')

# create and sort a list of the dictionary's keys
sorted_keys = sorted(verse_dict.keys())


# get the first element in the sorted list of keys
print(sorted_keys[0])

# # find the element with the highest value in the list of keys
print(max(sorted_keys))
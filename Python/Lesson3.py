'''
Data Structures
Welcome to this lesson on Data Structures! You'll learn about:

Types of Data Structures: Lists, Tuples, Sets, Dictionaries, Compound Data Structures
Operators: Membership, Identity
Built-In Functions or Methods

Data structures are containers that organize and group data types together in different ways.

 Python containers
 List.
  - A data type for mutable ordered sequences of elements.
  - A list is one of the most common and basic data structures in Python.
  - A list is defined using square brackets [], and used comma ' to separate elements inside.
  - List elements are ordered.

'''
list_of_random_things = [1, 3.4, 'a string', True]
'''
All ordered containers (like lists) are indexed in python using a starting index of 0. Therefore, to pull the first 
value from the above list, we can write:

>>> list_of_random_things[0]
1
'''

'''
 String vs List
  - String is a sequence of letter, while a List can by any type of objects.
  - String can be modified, but List can't. Immutable vs mutable.
  - Both Strings and Lists are ordered; which is why indexing works well for them.
  
  * Mutability: Whether an object can change its values after it has been created.
  * Order: Whether the order of elements in an object matters. Order is about whether 
    the position of an element in the object can be used to access the element.
    
  - We can use the order to access parts of a list and a string. 
'''
# List follows 0 indexing:

my_list = [1, 2, 3, 4, 5, 6]
print(my_list[0])
# >> 1

# IndexError: list index out of range. Meaning the index we are trying to reach, is not in the list.

# List slicing:
# Slicing begin from the left index. The slicing continues up to the right index.
my_list[0:6] # The lower bound (0) in inclusive, however the upper bound in exclusive (6).


print('\n')
print(my_list[0:3])
# >>> [1,2, 3]
# We can also omit the starting index, and still get the same result:
print(my_list[:3])

print(my_list[:])
# returns all elemennts
print(my_list[1])
# >>> 1
print(my_list[-1])
# >>> 6  Fetches the last item in the list.
print(my_list[::-1])
# >>> reverse list
print(my_list[3::])
# >>> [4, 5, 6] or my_list[3:]
print(my_list[:3])
# >>> [1, 2, 3]  Same as my_list[0:3]
print(my_list[3:])
# >>> [4, 5, 6]
print(my_list[::2])
# >>> move in pairs:  [1, 3, 5]
print(my_list[:2])
# >>> fetch only the first two elements.
print(my_list[-2])
# 5 Fetch the 2nd to last element in the list.

# List are mutable:
my_list[0] = 'one'.capitalize()
print(my_list)

# in  and not in operator
# in and not in return a bool value.
# in operator evaluates if object on the left side, is included in the object on the right side.
print(4 in my_list)
# not in evaluates if object on the left side, is not included in the object on the right side.
print((10 not in my_list))

print('\n')
# Quiz: List Indexing

month = 8
days_in_month = [31,28,31,30,31,30,31,31,30,31,30,31]

# use list indexing to determine the number of days in month
month -= 1
num_days = days_in_month[month]

print(num_days)


print('\n')
# Quiz: Slicing Lists
eclipse_dates = ['June 21, 2001', 'December 4, 2002', 'November 23, 2003',
                 'March 29, 2006', 'August 1, 2008', 'July 22, 2009',
                 'July 11, 2010', 'November 13, 2012', 'March 20, 2015',
                 'March 9, 2016']

# TODO: Modify this line so it prints the last three elements of the list
print(eclipse_dates[-3:])


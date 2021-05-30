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
# List follows 0 indexing:
my_list = [1, 2, 3, 4, 5, 6]
print(my_list[0])
# >> 1

# IndexError: list index out of range. Meaning the index we are trying to reach, is not in the list.
print('\n')
print(my_list[0:3])
# >>> [1,2, 3]
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
print(my_list[::2])
# >>> move in pairs:  [1, 3, 5]
print(my_list[:2])
# >>> fetch only the first two elements.
print(my_list[-2])
# 5 Fetch the 2nd to last element in the list.




'''
Zip() and enumerate() functions
 ip and enumerate are useful built-in functions that can come in handy when dealing with loops.

 Zip()
  Zip
    zip returns an iterator that combines multiple iterables into one sequence of tuples.  Each tuple
    contains the elements in that position from all the iterables.
    Example:
     list(zip(['a', 'b', 'c'], [1, 2, 3])) would output [('a', 1), ('b', 2), ('c', 3)].
'''
print('')

items = ['bananas', 'mattresses', 'dog kennels', 'machine', 'cheese']
weight = [15, 50, 11, 100, 5]

# combine both items and weight lists into one:
manifest = list(zip(items, weight))
print(manifest)
print('')

# extract manifest items:
for i, w in zip(items, weight):
    print(i, w)

print('')
print('Unzip a list into tuples using an asterisk')
# We can also creates new lists out of an existing one using zip(*) function:
# new_list1, new_list2 = zip(*old_list)
print(manifest)
print('>>>product, quantity = zip(*manifest)')
product, quantity = zip(*manifest)
print(product)
print(quantity)

print('\n')
# enumerate()
'''
Enumerate
enumerate is a built in function that returns an iterator of tuples 
containing indices and values of a list. You'll often use this when 
you want the index along with each element of an iterable in a loop.
'''
print('enumerate')
# - enumerate() function iterates through a list, along with its index:

# common way of iterating through a list elements and each index:
print('common way of iterating through a list elements and each index:')

print(f'items list: {items}')
for index, item in zip(range(len(items)), items):
    print(index, item)

print('')
# Now using enumerate()
print('using enumerate()')
print('with two iteration variables')
for i, item in enumerate(items):
    print(i, item)

print('')
print('with one iteration variables')
for i in enumerate(items):
    print(i)

print('=====================================')
print('\n')

# Quiz: Zip Coordinates
print('Quiz: Zip Coordinates')
x_coord = [23, 53, 2, -12, 95, 103, 14, -5]
y_coord = [677, 233, 405, 433, 905, 376, 432, 445]
z_coord = [4, 16, -6, -42, 3, -6, 23, -1]
labels = ["F", "J", "A", "Q", "Y", "B", "W", "X"]

points = list()

# write your for loop here

# zip all coordinates into one list using zip() function:
for point in zip(labels, x_coord, y_coord, z_coord):
    points.append('{}: {}, {}, {}'.format(*point))
# Adding labels to the newly created coords list, creating points list:

# for point in points:
#     print(point)


for point in points:
    print(point)

print('\n')
'''
Quiz: Zip Lists to a Dictionary
Use zip to create a dictionary cast that uses names as keys and heights as values.
'''

cast_names = ["Barney", "Robin", "Ted", "Lily", "Marshall"]
cast_heights = [72, 68, 72, 66, 76]

cast = dict()  # replace with your code
for k, v in zip(cast_names, cast_heights):
    cast[k] = v
print(cast)

print('\n')
'''
Quiz: Unzip Tuples
Unzip the cast tuple into two names and heights tuples.

'''
cast = (("Barney", 72), ("Robin", 68), ("Ted", 72), ("Lily", 66), ("Marshall", 76))

# define names and heights here
names, heights = zip(*cast)

print(names)
print(heights)

print('\n')

'''
Quiz: Transpose with Zip
Use zip to transpose data from a 4-by-3 matrix to a 3-by-4 matrix. 

'''
data = ((0, 1, 2), (3, 4, 5), (6, 7, 8), (9, 10, 11))

a, b, c = zip(*data)

data_transpose = a, b, c # replace with your code
print(data_transpose)


print('\n')
print('Quiz: Enumerate\n')

'''
Quiz: Enumerate


Use enumerate to modify the cast list so that each element contains 
the name followed by the character's corresponding height.
'''
cast = ["Barney Stinson", "Robin Scherbatsky", "Ted Mosby", "Lily Aldrin", "Marshall Eriksen"]
heights = [72, 68, 72, 66, 76]

# write your for loop here



# Solution using zip() and range() functions:
# for i, n in zip(range(len(cast)), heights):
#     cast[i] = cast[i] + ' ' + str(n)

# Solution using enumerate() function:
for index, item in enumerate(cast):
    cast[index] = f'{item} {str(heights[index])}'

print(cast)





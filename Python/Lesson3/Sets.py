'''
Set
 Sets are containers for mutable unordered collections of UNIQUE elements.
  - Sets remove duplicates.
  - Sets support the 'in' operator (just like Lists do).
  - We add new elements to a Set using the add() method, while in List we use append()
        example: my_set.add('new_element')
  - Sets use pop() to remove a *random element
  - Other operations we can perform with Sets, include those with mathematical sets.Methods
    like union, intersection, and difference are easy to perform in Sets.

  * pop() removes a random element because Sets, unlike Lists are unordered, so there's
    no last element in Sets.

'''
nums_list = [1, 2, 3, 3, 4, 5, 5, 6, 1]
print('Lists allow duplicates: {}'.format(nums_list))

set_ex1 = set(nums_list)
print(f'While elements in sets are unique: {set_ex1}')

print('')
print(f'''From the example above, we can see the main difference between Sets and Lists if we use the len() function: 
Total numbers in a list with duplicate elements: {len(nums_list)}
Total numbers in a Set with duplicate elements: {len(set_ex1)}
''')

# We cam add new elements to a set using add() method:
set_ex1.add(7)
print(f'Adding 7 using add() method: set_ex1.add(7) => {set_ex1}')

print('')
# We cam remove a element from a set using pop() method:
set_ex1.pop()
print(f'Removing a random element using pop() method: set_ex1.pop() => {set_ex1}')

print('')
family = {"noor", "dina", "leen", "tareq"}  # define a set

print("goldie" in family)  # check for element

family.add('peter')  # add an element
print(family)

print(family.pop())  # remove a random element
print(family)

print('')
# union() method combines two sets as 1
print('''union() method combines two sets creating a new set, and of course removes 
common elements (duplicates)
''')
print('union() example:')
parents = {"en3am", 'adnan', 'mahd', 'umaymah', 'tareq'}
print(family)
print(parents)
union_family = family.union(parents)
print(union_family)

print('')
print('''
intersection() method is returns a new set with only duplicates elements from both the
original set and the other set provided as intersection() argument.

intersection() example:
inter_set = family.intersection(parents)''')
inter_set = family.intersection(parents)
print(f'>>> {inter_set}')

print('')
# difference()
print('''
Unlike the intersection() method, difference() returns unique elements from the original
set, element that are not included in the other set provided as argument.
''')
family_diff = family.difference(parents)
print(family_diff)

print('')
parents_diff = parents.difference(family)
print(parents_diff)

print('')
a = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
b = set(a)
b.add(5)
b.pop()
print(b)
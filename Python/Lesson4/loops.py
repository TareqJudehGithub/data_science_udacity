'''
Loops

 Python has two kinds of loops: for and while loops.
 A 'for loop' is used to iterate, or do something repeatedly over an iterable.

 An iterable is an object that can return one of its elements at a time. that
 can include any sequence types, such as strings, lists, and tuples. as well
 as a non-sequence type, such as dictionaries and files.

 For Loops

 Let's break down the components of a for loop, using this example with the list
 cities:
'''
cities = ['new york', 'mountain view', 'chicago', 'los angeles']
for city in cities:
    print(city)
print('Done looping over cities list.')

'''
- In our 'cities' example above, cities is the iterable being looped over, while city
  is the iteration variable.
- The for loop heading like always ends with a colon :
- Following the for loop heading line, an indented block of code, the body of the loop,
  to be executed in each iteration of this loop.
- In the first iteration of the loop, city gets the value of the first element in cities
  list, which is 'new york'.
- After the body of the loop has executed, we don't move on to the next line yet; we go 
  back to the for heading line, where the iteration variable takes the value of the next 
  element of the iterable. In the second iteration of the loop above, city takes the value 
  of the next element in cities, which is "mountain view".
- This process repeats until the loop has iterated through all the elements of the 
  iterable. Then, we move on to the line that follows the body of the loop. 

for loop structure
    for 'iteration variable' in 'iterable':
        'loop body' - This line of code will be repeated until l the loop has iterated all over the iterable elements.
    'next line' to be executed right after the loop has iterated through all the iterable elements. 
'''
print('\n')

'''
Using the range() Function with for Loops
 - range() is a built-in function in Python used to create an iterable sequence of numbers. 
 
range(start=0, stop, step=1)
- The range() function takes three integer arguments, the first and third of which are optional:
 - The 'start' argument is the first number of the sequence. If unspecified, 'start' defaults to 0.
 - The 'stop' argument is 1 more than the last number of the sequence. This argument must be specified.
 - The 'step' argument is the difference between each number in the sequence. If unspecified, 'step' defaults to 1.
 Example: 
    for i in range(start=1, stop=10, step=2):
    print(i)
    
 - Notes on using range():
   - If you specify one integer inside the parentheses withrange(), it's used as the value for 'stop,' and the defaults are used for the other two.
        e.g. - range(4) returns 0, 1, 2, 3
   - If you specify two integers inside the parentheses withrange(), they're used for 'start' and 'stop,' and the default is used for 'step.'
        e.g. - range(2, 6) returns 2, 3, 4, 5
   - Or you can specify all three integers for 'start', 'stop', and 'step.'
        e.g. - range(1, 10, 2) returns 1, 3, 5, 7, 9
'''
# Example of using range() function with for loop:
print('range() function example using only one argument (stop)')
for i in range(5):
    print(i)
print('Done iterating over range(5) iterable')

print('')
print('range() function example using two arguments (start, stop)')
for i in range(1, 5):
    print(i)
print('Notice the difference here between this loop outcome and the example before.')

print('')
print('range() function example using three arguments (start, stop, step)')
# Example of using range() function with for loop using (start, stop, and step arguments):
for i in range(1, 10, 2):
    print(i)


print('\n')
'''
Creating and Modifying Lists
 In addition to extracting information from lists, as we did in the first example above, you can
 also create and modify lists with for loops. You can create a list by appending to a new list at 
 each iteration of the for loop like this:
'''
grocery_list = ['milk', 'juice', 'bread', 'cereal']
cart = list()

for item in grocery_list:
    cart.append(item.title())

print(cart)
print("\n".join(cart))  # Each element in 'cart' is sorted in a new line.

print('\n')

# Another way of iterating through sequenced types using range(len()):
for index in range(len(grocery_list)):
    print(grocery_list[index].upper())      # It's like: print(grocery_list[0], print(grocery_list[1], and so on.)

print('\n')
# Write a for loop using range() to print out multiples of 5 up to 30 inclusive
#
for i in range(5, 35, 5):
    print(i)

print('\n')
# Write a for loop using range() to print out multiples of 3 up to 30 inclusive
for i in range(3, 33, 3):
    print(i)


print('\n')
# Quiz: Create Usernames
names = ["Joey Tribbiani", "Monica Geller", "Chandler Bing", "Phoebe Buffay"]
usernames = list()

for name in names:
    usernames.append(name.lower().replace(' ', '_'))

print(usernames)


print('')
# IMPORTANT in order to modify a CURRENT list, we need to use range(len(()):
users = ["Joey Tribbiani", "Monica Geller", "Chandler Bing", "Phoebe Buffay"]
for index in range(len(users)):
    users[index] = users[index].lower().replace(' ', '_')

print(users)


print('\n')
#Quiz: Tag Counter

tokens = ['<greeting>', 'Hello World!', '</greeting>']
count = 0

# write your for loop here
for i in tokens:
    if '<' in i and '>' in i:
        count += 1

print(count)
count = 0
# another solution using indexing:
for i in tokens:
    if i[0] == '<' and i[-1] == '>':
        count += 1
print(count)
# Quiz: Create an HTML List
print('\n')

items = ['first string', 'second string']
html_str = '<ul>\n'
print(items)
print('')

for item in items:
    html_str += f'  <li>{item}</li>\n'
html_str += '</ul>'

print(html_str)

print('\n')
print(list(range(5)))
print(list(range(4, 8)))
print(list(range(5, 40, 5)))
print(list(range(0, -5)))

print('\n')


# Building Dictionaries

book_title = ['great', 'expectations', 'the', 'adventures', 'of', 'sherlock',
              'holmes', 'the', 'great', 'gasby', 'hamlet', 'adventures', 'of', 'huckleberry', 'fin']

word_counter = dict()

for word in book_title:
    if word in word_counter:
        word_counter[word] += 1
    else:
        word_counter[word] = 1

print(word_counter)
print('')

# using .get() method
another_word_counter = dict()

for word in book_title:
    another_word_counter[word] = another_word_counter.get(word, 0) + 1

print(another_word_counter)


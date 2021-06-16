'''
Lambda Expressions
You can use lambda expressions to create anonymous functions. That is, functions
 that don’t have a name.
 - Lambda expressions are helpful for creating quick functions that aren’t
   needed later in your code. This can be especially useful for higher order functions,
   or functions that take in other functions as arguments.
 - Lambda expressions are not practical for complex functions.

 Lambda Expression Structure:
  - The lambda keyword is used to indicate that this is a lambda expression.
  - Following lambda are one or more arguments for the anonymous function separated by
    commas, followed by a colon :. Similar to functions, the way the arguments are named
    in a lambda expression is arbitrary.
  - Last is an expression that is evaluated and returned in this function. This is a lot
    like an expression you might see as a return statement in a function.
'''

# lambda function with 1 arg
double_int = lambda i: i * 2
print(double_int(2))

# lambda function with 2 args
full_name = lambda first, last: first + ' ' + last
print(full_name('John', 'Smith'))

'''
map()
 map() is a higher-order built-in function that takes a function and iterable as inputs, and
 returns an iterator that applies the function to each element of the iterable.



print('')

fruits = ['fruit_Apples', 'Tomato ', 'Potato', 'fruit_Oranges', 'fruit_Water Melons', 'fruit_Cherries']


def is_fruit(fruit):
    for i in fruit:
        if 'fruit' in i:
            print(i)


is_fruit(fruits)

print('Lambda, \n')


fruits_list = list(map(lambda item: 'fruit' in item, fruits))

is_fruit = list(map(lambda item: True if 'fruit' in item else False, fruits))

print(fruits_list)
print(is_fruit)


Quiz: Lambda with Map

'''
print('\n')

numbers = [
              [34, 63, 88, 71, 29],
              [90, 78, 51, 27, 45],
              [63, 37, 85, 46, 22],
              [51, 22, 34, 11, 18]
           ]

averages = list(map(lambda i: sum(i)/len(i), numbers))

print(averages)

print('\n')
print('filter()\n')
'''
filter()
 filter() is a higher-order built-in function that takes a function and 
 iterable as inputs and returns an iterator with the elements from the 
 iterable for which the function returns True. 

Quiz: Lambda with Filter
'''

cities = ["New York City", "Los Angeles", "Chicago", "Mountain View", "Denver", "Boston"]

# Returns items in cities with characters shorter than 10.
short_cities = list(filter(lambda city: len(city) < 10, cities))
print(short_cities)

print('\n')

# Filter fruits from basket_list:
basket_list = ['fruit: Apples', 'fruit: Grapes', 'Potatos', 'Cucumber', 'fruit: Oranges']

fruit_list = list(filter(lambda item: 'fruit:' in item, basket_list))
print(fruit_list)
















from math import factorial
import math
import random


# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.



# Can you create a similar function? show me.
def welcome(user):
    print(f'Hi, {user}!\n')

if __name__ == '__main__':
    welcome('Tareq')


'''

Programming In Python
As you learn Python throughout this course, there are a few things you should keep in mind.

Python is case sensitive.

Spacing is important.

Use error messages to help you learn.

'''
print('\n')

'''
*args and **kwargs parentheses in Python:

 - *args is useful when passing many arguments in the function call. Lets take an example. 
'''
cart = list()


def add_to_cart(*args):
    global cart
    return cart.extend(args)


add_to_cart('Milk', 'Bread', 'Cereal', 'Eggs')
print(cart, '\n')

'''
 - **kwargs Is used and useful when providing keywords in a function call argument.
    Let's take an example.
'''


def full_name(**kwargs):
    return f'My full name is: {kwargs["first_name"]} {kwargs["last_name"]}.'


print(full_name(first_name='John', last_name='Smith'))

print('\n')

'''Rounding in Python
 Round numerical values up and down in Python
When we round values, we go from a numerical value with decimal places to a whole number. With this process we do lose some precision, but the rounded value is often much easier to read and interpret.

Python has three ways to turn a floating-point value into a whole (integer) number:

The built-in round() function rounds values up and down.
The math.floor() function rounds down to the next full integer.
The math.ceil() function rounds up to the next full integer.
//

More on:
    https://kodify.net/python/math/round-integers/
    

Factorial in math
 We can import the factorial library from math module
'''

num_fact = factorial(5)     # 1 * 2 * 3 * 4 * 5

print(num_fact, '\n')

# factorial using for loop and range() function
acc = 1
for num in range(1, 5 + 1):
    acc *= num
    print(acc)

print('\n')

# math.random library
print('random')
# https://www.w3schools.com/python/module_random.asp

rand_randint = random.randint(1, 10)
rand_choice = random.choice([1, 2, 3, 4, 5])
rand_range = random.randrange(1, 10)
print(rand_randint, rand_choice, rand_range)

# shuffle   takes a sequence and reorganize it's order randomly.
rand_list = [1, 2, 3, 4, 5, 6]
print(rand_list)
random.shuffle(rand_list)
print(rand_list)

# random.sample() The sample() method returns a list with a randomly
# selection of a specified number of items from a sequnce.
print(f'random.sample(): {random.sample(rand_list, k=2)}')

# return a random float value between 0 and 1
print(random.random())

# math
print(math.pow(3, 2))   # returns to the power of 2 to a given argument
print(math.sqrt(81))    # returns the square root of a given argument

# math.exp()    # return (e to the power of a given argument)
print(math.exp(3))
# fabs

print("============================\n")


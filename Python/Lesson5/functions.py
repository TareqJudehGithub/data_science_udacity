import math

print('')
'''
Functions

Calculate a volume of a cylinder ub a function.
pi = 3.14159
cylinder volume = height * pi * radius ** 2 (square of radius)
So, if height is 10, and radius is 3, the volume can be calculated like the following:
volume = 10 * 3.14159 * (3 ** 2)
See the example below for solution.

 - A function always starts with def keyword, indicating that the code that follow is 
   a function definition, and ends with a colon :
 - In the below example, cylinder_volume is the name of the function, it should be as
   one word with no gaps. function names follow the same naming conventions as variables.
 - function names end with parentheses containing parameters, seperated by commas. In
   our case (height, radius).  parameters can be empty also.
 - The function body is indented after the header line.
 - Within the body, we can refer to the parameters provided in the function definition .
 - Inside the body, we can also define new variables, which can only be used within
   these indented lines.
 - return keyword, give back a value when the function is called.
 - If there is no return statement, the function simply returns None.
 - print vs return in a function. print outputs a value to the console, while return
   stores a value, which we can use later.
 - function name outside the function, calls the function.
 - Function call is: A statement that makes a function run.
 - Argument: A value that we can pass to a function when we call that function.
 
 - Remember:
     - A function is block of code that has a name, but doesn't run until we tell it to.
     - A method is a function associated with an object.
     - An argument is a value that we can pass to a function when we call that function.
     - string.lower() or .upper() or .title() is method call.
  

'''


def cylinder_volume(height, radius):
    pi = 3.14159
    return height * (radius ** 2) * pi


print(round(cylinder_volume(10, 3), 2))

print('\n')

# Quiz: Population Density Function


# write your function here
def population_density(population, land_area):
    return population/land_area


population_density(population=1000000, land_area=450)



# test cases for your function
test1 = population_density(10, 1)
expected_result1 = 10
print("expected result: {}, actual result: {}".format(expected_result1, test1))

test2 = population_density(864816, 121.4)
expected_result2 = 7123.6902801
print("expected result: {}, actual result: {}".format(expected_result2, test2))


print('\n')

# Quiz: readable_timedelta
print('Quiz: readable_timedelta')


def readable_timedelta(days):

    day = days % 7
    week = days // 7
    # OR week = math.floor(days / 7)

    return '{} week(s) and {} day(s)'.format(week, day)


# test your function
print(readable_timedelta(10))

print('\n')

# Scope
print('Variable Scope')
'''
- A scope refers to which part of a program a variable can be referenced, or used, from.
- If a variable is used inside a function, it can only be used within that function.
- ariables defined outside functions, as in the example below, can still be accessed within 
  a function. Here, word is said to have a global scope.
    # This works fine
        word = "hello"
        
        def some_function():
            print(word)
        
        some_function()
'''

'''
Passing a global variable into a function
    There are three ways to pass a global variable into a function:
        1. By passing that global variable as an argument in the function calling line code.
        2. By using the 'global' key word inside the function scope, in case we needed to
           to edit the global scope variable. See example 2.
        3. 
'''

# Example 1: Passing global variable in the function argument.

egg_count = 0


def buy_eggs(count):
    return count + 12


egg_count = buy_eggs(egg_count)
print(egg_count, '\n')


# Example 2: Passing variable scope using 'global' keyword
cart = list()


def add_to_cart(*args):
    global cart
    return cart.extend(args)


add_to_cart('Milk', 'Bread')
print(cart, '\n')


''' 
global scope variable
 - We can pass a global global scope variable into a function body.
 - If we needed to edit/change that global scope variable value, we should  use 
   'global' keyword inside the function. That will change the global scope variable value
   OUTSIDE the function. To change the global scope variable only inside the function, we 
   could pass the global scope variable as argument in the function call line of code.
'''
global_scope = 'global variable'


def print_var():
    global global_scope
    global_scope = 'Edited the global scope variable value from inside a function.'
    return global_scope


print(f'global variable scope value from inside the function:\n{print_var()}\n')

print(f'global variable scope value:\n{global_scope}')






































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
'''







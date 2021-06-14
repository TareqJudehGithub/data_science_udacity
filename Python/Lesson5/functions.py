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
 - function names end with parentheses containing arguments, seperated by commas. In
   our case (height, radius).  arguments can be empty also.
 - The function body is indented after the header line.
 - Within the body, we can refer to the arguments provided in the function header.
 - Inside the body, we can also define new variables, which can only be used within
   these indented lines.
 - return keyword, give back a value when the function is called.
 - If there is no return statement, the function simply returns None.
 - print vs return in a function. print outputs a value to the console, while return
   stores a value, which we can use later.
 - function name outside the function, calls the function.
 
  

'''


def cylinder_volume(height, radius):
    pi = 3.14159
    return height * (radius ** 2) * pi


print(round(cylinder_volume(10, 3), 2))


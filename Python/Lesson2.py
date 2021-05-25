'''
Data types and operators

    Data types and operators are the building blocks of Python.

    In Lesson 2, we will be covering the following subjects:
        Data Types: Integers, Floats, Booleans, Strings
        Operators: Arithmetic, Assignment, Comparison, Logical
        Built-In Functions, Type Conversion
        Whitespace and Style Guidelines

    Arithmetic operators

    + Addition
        5 + 2

    - Subtraction
        5 - 2

    * Multiplication
        5 * 2

    / Division
        5 / 2
    Note: // Divides and rounds down to the nearest integer

    % Mod (the remainder after dividing)
    7 % 3 = 1

    ** Exponentiation (note that ^ does not do this operation, as you might have seen in other languages)
      3 ** 2 is Three to the power of two => 9
      ^ is caret


'''
modulo_quiz = 10 % 4
print(f'10 % 4 = {modulo_quiz}')

exponentiation_quiz = 4 ** 4
print(f'4 ** 4 = {exponentiation_quiz}')

divide_round_quiz = (10 + 5) // 2
print(f'(10 + 5) // 2 = {divide_round_quiz}')


'''
Quiz:

My electricity bills for the last three months have been $23, $32 and $64. What is the average monthly electricity bill 
over the three month period? Write an expression to calculate the mean, and use print() to view the result.
'''
monthly_bills = (23, 32, 64)
avg_bill = sum(monthly_bills)/3
print(avg_bill)

print('\n')

'''
Quiz: Calculate
In this quiz you're going to do some calculations for a tiler.
Two parts of a floor need tiling. One part is 9 tiles wide by 7 tiles long, the other is 5 tiles wide by 7 tiles long.

How many tiles are needed?
You buy 17 packages of tiles containing 6 tiles each. How many tiles will be left over?

'''
# Fill this in with an expression that calculates how many tiles are needed.
tiles_needed = (9 * 7) + (5 * 7)
print(tiles_needed)

# Fill this in with an expression that calculates how many tiles will be left over.
tiles_available = 17 * 6
print(tiles_available)

tiles_left = tiles_available - tiles_needed
print(tiles_left)

'''
Variables

my_variable = some_value

    my_variable :   variable name
    =           :   assignment operator that assigns the value on the right, to the variable to the left.
    some_value  :   value
    
    now we can access the value from its variable name.

     - Variable names should be descriptive.
     - Only use ordinary letters, numbers and underscores in your variable names.
     - You can’t use Python's reserved words, or "keywords," as variable names.
     - The pythonic way to name variables is to use all lowercase letters and underscores (snake case) to separate words. 
         
        YES
            my_height = 58
            my_lat = 40
            my_long = 105
            
        NO    
            my height = 58
            MYLONG = 40
            MyLat = 105
'''

    # Assigning multiple variables in Python:
x, y, z, = 1, 2, 3

'''
Assignment Operators
rithmetic operators are used to perform mathematical operations like addition, subtraction, multiplication, etc.

Operator	Meaning	Example
+	Add two operands or unary plus	x + y+ 2
-	Subtract right operand from the left or unary minus	x - y- 2
*	Multiply two operands	x * y
/	Divide left operand by the right one (always results into float)	x / y
%	Modulus - remainder of the division of left operand by the right	x % y (remainder of x/y)
//	Floor division - division that results into whole number adjusted to the left in the number line	x // y
**	Exponent - left operand raised to the power of right	x**y (x to the power y)


Comparison operators
Comparison operators are used to compare values. It returns either True or False according to the condition.

Operator	Meaning	Example
>	Greater than - True if left operand is greater than the right	x > y
<	Less than - True if left operand is less than the right	x < y
==	Equal to - True if both operands are equal	x == y
!=	Not equal to - True if operands are not equal	x != y
>=	Greater than or equal to - True if left operand is greater than or equal to the right	x >= y
<=	Less than or equal to - True if left operand is less than or equal to the right	x <= y

Logical operators
Logical operators are the and, or, not operators.

Operator	Meaning	Example
and	True if both the operands are true	x and y
or	True if either of the operands is true	x or y
not	True if operand is false (complements the operand)	not x

Bitwise operators
Bitwise operators act on operands as if they were strings of binary digits. They operate bit by bit, hence the name.

For example, 2 is 10 in binary and 7 is 111

In the table below: Let x = 10 (0000 1010 in binary) and y = 4 (0000 0100 in binary)

Operator	Meaning	Example
&	Bitwise AND	x & y = 0 (0000 0000)
|	Bitwise OR	x | y = 14 (0000 1110)
~	Bitwise NOT	~x = -11 (1111 0101)
^	Bitwise XOR	x ^ y = 14 (0000 1110)
>>	Bitwise right shift	x >> 2 = 2 (0000 0010)
<<	Bitwise left shift	x << 2 = 40 (0010 1000)

Assignment operators
Assignment operators are used in Python to assign values to variables.

There are various compound operators in Python like a += 5 that adds to the variable and later assigns the same. It is 
equivalent to a = a + 5.

Operator	Example	Equivalent to
=	x = 5	x = 5
+=	x += 5	x = x + 5
-=	x -= 5	x = x - 5
*=	x *= 5	x = x * 5
/=	x /= 5	x = x / 5
%=	x %= 5	x = x % 5
//=	x //= 5	x = x // 5
**=	x **= 5	x = x ** 5
&=	x &= 5	x = x & 5
|=	x |= 5	x = x | 5
^=	x ^= 5	x = x ^ 5
>>=	x >>= 5	x = x >> 5
<<=	x <<= 5	x = x << 5


dentity operators
is and is not are the identity operators in Python. They are used to check if two values (or variables) are located on the same part of the memory. Two variables that are equal does not imply that they are identical.

Operator	Meaning	Example
is	True if the operands are identical (refer to the same object)	x is True
is not	True if the operands are not identical (do not refer to the same object)

'''
value_a = 5
value_b = 5
print(value_a is value_b)
print(value_a is not value_b)

'''
Membership operators
in and not in are the membership operators in Python. They are used to test whether a value or variable is found in a sequence (string, list, tuple, set and dictionary).

In a dictionary we can only test for presence of key, not the value.

Operator	Meaning	Example
in	True if value/variable is found in the sequence	5 in x
not in	True if value/variable is not found in the sequence	5 not in x

'''
my_list = [1, 2, 3, 4, 5]
print(1 in my_list)
print(7 not in my_list)


# Quiz: Assign and Modify Variables
# Now it's your turn to work with variables. The comments in this quiz (the lines that begin with #) have instructions
# for creating and modifying variables. After each comment write a line of code that implements the instruction.

# The current volume of a water reservoir (in cubic metres)
reservoir_volume = 4.445e8
print(reservoir_volume)
# The amount of rainfall from a storm (in cubic metres)
rainfall = 5e6

# decrease the rainfall variable by 10% to account for runoff
rainfall -= (5 * 10 ** 6) * 0.10

# add the rainfall variable to the reservoir_volume variable
reservoir_volume += rainfall
print(reservoir_volume)
# increase reservoir_volume by 5% to account for stormwater that flows
# into the reservoir in the days following the storm
reservoir_volume += reservoir_volume * 0.05
# decrease reservoir_volume by 5% to account for evaporation
reservoir_volume -= reservoir_volume * 0.05
# subtract 2.5e5 cubic metres from reservoir_volume to account for water
# that's piped to arid regions.
reservoir_volume -= 2.5 * 10 ** 5
# print the new value of the reservoir_volume variable
print(reservoir_volume)

carrots = 24
rabbits = 8
crs_per_rab = carrots/rabbits
# rabbits = 12
print(crs_per_rab)
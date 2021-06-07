'''
Condtional Statements

 If Statement
  An if statement, evaluates whether a condition is True or False. And based
  on that condition, it runs or skips code.

    Phone Balance problem
     If phone balance, goes below $5, add $10 from your bank balance, and
     subtract it from your bank balance.
'''
phone_balance = 4
bank_balance = 1000

if phone_balance < 5:  # condition is True
    # If the condition above is true, run this code
    phone_balance += 10
    bank_balance -= 10

print(f'Your new Phone balance is ${phone_balance}\n'
      f'Your new Bank balance is ${bank_balance}')

print('')
#   = is used to assign the value on the right, to the name on the left.
#   == is used to evaluate whether objects on both sides are equal or not.

# if, elif, and else:
print('Weather today using if, elif, and else statements:')


class WeatherToday:
    def __init__(self):
        self.season = 'summer'
        self.weather_today()

    def weather_today(self):
        if self.season == 'spring':
            print(f'Its {self.season} already!Lets plant the garden.')
        elif self.season == 'summer':
            print(f'Its {self.season}! Go swim!')
        elif self.season == 'autumn':
            print(f'Its {self.season}! Sweep your front yard.')
        else:
            print('Stay home and stay warm.')


WeatherToday()

print('\n')

'''
Practice: Which Prize

Points	    Prize
1 - 50	    wooden rabbit
51 - 150	no prize
151 - 180	wafer-thin mint
181 - 200	penguin
'''

points = 174  # use this input to make your submission

# write your if statement here
if 0 < points <= 50:
    price = "Congratulations! You won a wooden rabbit!"
elif 150 <= points <= 180:
    price = "Congratulations! You won a wafer-thin min!"
elif 181 <= points <= 200:
    price = "Congratulations! You won a penguin!"
else:
    price = "Oh dear, no prize this time."

print(price)

# weak solution:
# points = 75
# #
# if points <= 50:
#     result = "Congratulations! You won a wooden rabbit!"
# elif points <= 150:
#     result = "Oh dear, no prize this time."
# elif points <= 180:
#     result = "Congratulations! You won a wafer-thin mint!"
# else:
#     result = "Congratulations! You won a penguin!"
#
# print(result)


print('\n')
# Quiz: Guess My Number

# '''
# You decide you want to play a game where you are hiding
# a number from someone.  Store this number in a variable
# called 'answer'.  Another user provides a number called
# 'guess'.  By comparing guess to answer, you inform the user
# if their guess is too high or too low.

# Fill in the conditionals below to inform the user about how
# their guess compares to the answer.
# '''
answer = 7
guess = 7

if guess < answer:
    result = "Oops!  Your guess was too low."
elif guess > answer:
    result = "Oops!  Your guess was too high."
else:
    result = "Nice!  Your guess matched the answer!"

print(result)

print('\n')
# Quiz: Tax Purchase

# '''
# Depending on where an individual is from we need to tax them
# appropriately.  The states of CA, MN, and
# NY have taxes of 7.5%, 9.5%, and 8.9% respectively.
# Use this information to take the amount of a purchase and
# the corresponding state to assure that they are taxed by the right
# amount.
# '''

state = 'CA'
purchase_amount = 100

if state == 'CA':
    tax_amount = .075
    total_cost = purchase_amount * (1 + tax_amount)
    result_1: str = "Since you're from {}, your total cost is {}.".format(state, total_cost)

elif state == 'MN':
    tax_amount = .095
    total_cost = purchase_amount * (1 + tax_amount)
    result_1: str = "Since you're from {}, your total cost is {}.".format(state, total_cost)

else:
    tax_amount = .089
    total_cost = purchase_amount * (1 + tax_amount)
    result_1: str = "Since you're from {}, your total cost is {}.".format(state, total_cost)

print(result_1)

print('\n')
'''
Complex Boolean Expressions
    If statements sometimes use more complicated boolean expressions for their conditions.
    They may contain multiple comparisons operators, logical operators, and even calculations.

'''

# BMI
weight = 50
height = 175

print('')

if 18 >= weight / height ** height < 25:
    print('BMI is considered normal.')

print('')
# Another weather condition:
is_raining = True
is_sunny = True

if is_raining and is_sunny:
    print('Rainbow!')

print('')
'''
For really complicated conditions you might need to combine some ands, ors and nots
together. Use parentheses if you need to make the combinations clear.
'''
location = 'USA'
unsubscribed = False

if (not unsubscribed) and (location == "USA" or location == "CAN"):
    print("send email")

'''
Good and Bad boolean expressions in If statements.

- Don't use True or False as conditions
    Bad example
    if True:
        print("This indented code will always get run.")
    While "True" is a valid boolean expression, it's not useful as a condition since 
    it always evaluates to True, so the indented code will always get run. Similarly, if 
    False is not a condition you should use either - the statement following this if statement 
    would never be executed.
    
     Another bad example
    if is_cold or not is_cold:
        print("This indented code will always get run.")

-  Be careful writing expressions that use logical operators
    Bad example
    if weather == "snow" or "rain":
        print("Wear boots!")
- Don't compare a boolean variable with == True or == False
    This comparison isn’t necessary, since the boolean variable itself is a boolean expression.

    Bad example
    if is_cold == True:
        print("The weather is cold!")
    
    This is a valid condition, but we can make the code more readable by using the variable itself 
    as the condition instead, as below.

    Good example
    if is_cold:
        print("The weather is cold!")
    
    If you want to check whether a boolean is False, you can use the not operator.
'''

print('\n')
'''
Truth Value Testing

If we use a non-boolean object as a condition in an if statement in place of the boolean expression, 
Python will check for its truth value and use that to decide whether or not to run the indented code.
By default, the truth value of an object in Python is considered True unless specified as False in the 
documentation.


Here are most of the built-in objects that are considered False in Python:
- constants defined to be false: None and False
- zero of any numeric type: 0, 0.0, 0j, Decimal(0), Fraction(0, 1)
- empty sequences and collections: '"", (), [], {}, set(), range(0)

Example:

errors = 3
    if errors:
        print("You have {} errors to fix!".format(errors))
    else:
    print("No errors to fix!")
In this code, errors has the truth value True because it's a non-zero number, so 
the error message is printed. This is a nice, succinct way of writing an if statement.
'''

basket = 0  # try with 0 and again try with a number greater than 0
if basket:
    print('You have {} item in your cart'.format(basket))
else:
    print('Cart is empty.')

print('\n')
# Quiz: Using Truth Values of Objects
'''
Practice: Which Prize

Points	    Prize
1 - 50	    wooden rabbit
51 - 150	no prize
151 - 180	wafer-thin mint
181 - 200	penguin
'''

points = 174
prize = 'wafer-thin mint'

if points <= 50 and prize == 'wooden rabbit':
    my_result = "Congratulations! You won a {}!".format(prize)
    print(my_result)
elif 50 <= points <= 150:
    my_result = "Oh dea, no prize this time."
    print(my_result)
elif 151 <= points <= 180 and prize == 'wafer-thin mint':
    my_result = "Congratulations! You won a {}!".format(prize)
    print(my_result)
elif 181 <= points <= 200 and prize == 'penguin':
    my_result = "Congratulations! You won a {}!".format(prize)
    print(my_result)

else:
    print('Check your points or prize variables entry.')

'''
A solution version that works on Udacity playground:

points = 174  # use this as input for your submission

# establish the default prize value to None
prize = 'wafer-thin mint'

# use the points value to assign prizes to the correct prize names
# use the truth value of prize to assign result to the correct prize

if points <= 50 and prize == 'wooden rabbit':
    result = "Congratulations! You won a {}!".format(prize)
    
elif 50 <= points <= 150:
    result = "Oh dea, no prize this time."
   
elif 151 <= points <= 180 and prize == 'wafer-thin mint':
    result = "Congratulations! You won a {}!".format(prize)
   
elif 181 <= points <= 200 and prize == 'penguin':
    result = "Congratulations! You won a {}!".format(prize)
    
print(result)
'''
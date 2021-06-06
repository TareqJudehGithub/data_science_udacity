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

if phone_balance < 5:   # condition is True
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
#Practice: Which Prize

Points	    Prize
1 - 50	    wooden rabbit
51 - 150	no prize
151 - 180	wafer-thin mint
181 - 200	penguin
'''

points = 55  # use this input to make your submission

# write your if statement here
if points <= 50:
    result = "Congratulations! You won a wooden rabbit!"
elif 150 <= points <= 180:
    result = "Congratulations! You won a wafer-thin min!"
elif 181 <= points <= 200:
    result = "Congratulations! You won a penguin!"
else:
    result = "Oh dear, no prize this time."

print(result)
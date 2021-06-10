'''
While loop

 - A for loop, iterates over elements in a sequence, while a while loop keep
   iterating over elements until a specified 'stopping condition' is met.
'''

card_deck = [4, 11, 8, 5, 13, 2, 8, 10]
hand = list()

while sum(hand) <= 17:
    hand.append(card_deck.pop())
    print(f'Cards in hand; {hand}')
    print(f'Sum of hands {sum(hand)}')

print('')
print(hand)

'''
Components of a While Loop
- The first line starts with the while keyword, indicating this is a while loop.
- Following that is a condition to be checked. In this example, that's sum(hand) <= 17
- The while loop heading always ends with a colon :
- Indented after this heading is the body of the while loop. If the condition for the 
  while loop is true, the code lines in the loop's body will be executed.
- We then go back to the while heading line, and the condition is evaluated again. This 
  process of checking the condition and then executing the loop repeats until the condition 
  becomes false. 
- When the condition becomes false, we move on to the line following the body 
  of the loop, which will be unindented.

* The indented body of the loop should modify at least one variable in the test condition. If 
  the value of the test condition never changes, the result is an infinite loop!
'''

print('\n')
'''
Practice: Factorials with While Loops
Find the factorial of a number using a while loop.

A factorial of a whole number is that number multiplied by every whole number between itself and 1. 
For example, 6 factorial (written "6!") equals 6 x 5 x 4 x 3 x 2 x 1 = 720. So 6! = 720.
'''
# Using while loop
number = 6
product = 1
current = 1

while current <= number:
    print(f'Current: {current}')
    product *= current
    current += 1
    print(f'Product: {product}')

print('')
print(f'{number}! = {[product]}')


print('\n')
# Using for loop
numbers = 5
product = 1
for i in range(1, 6):
    print(product)
    product *= i

print('')
print(product)


print('\n')
# Quiz: Count By

start_num = 1 #provide some start number
end_num = 10 #provide some end number that you stop when you hit
count_by = 1 #provide some number to count by
break_num = 0

# write a while loop that uses break_num as the ongoing number to
#   check against end_num

if start_num > end_num:
    result = "Oops! Looks like your start value is greater than the end value. Please try again."
    print(result)
else:
    while break_num < end_num:
        break_num += count_by
    print(break_num)


print('\n')

# Quiz: Nearest Square
limit = 40
line = 1

# write your while loop here

while line ** 2 < limit:
    nearest_square = line ** 2
    line += 1

print(nearest_square)

print('\n')
'''
For Loops Vs. While Loops
Now that you are familiar with both for and while loops, let's consider when it's most helpful to use each of them.

for loops are ideal when the number of iterations is known or finite.

Examples:

When you have an iterable collection (list, string, set, tuple, dictionary)
for name in names:
When you want to iterate through a loop for a definite number of times, using range()
for i in range(5):
while loops are ideal when the iterations need to continue until a condition is met.

Examples:

When you want to use comparison operators
while count <= 100:
When you want to loop based on receiving specific user input.
while user_input == 'y':
'''

print('\n')
# Question: What type of loop should we use?
num_list = [422, 136, 524, 85, 96, 719, 85, 92, 10, 17, 312, 542, 87, 23, 86, 191, 116, 35, 173, 45, 149, 59, 84, 69, 113, 166]
odd_num_list = list()

# while :


for i in num_list:
    if i % 2 != 0 and len(odd_num_list) < 5:
        odd_num_list.append(i)

print(odd_num_list)


print('\n')

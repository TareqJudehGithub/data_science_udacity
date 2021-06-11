'''
Break, Continue
  - A loop will terminate immediately, if it encounters a 'break' statement.
  - Break statement,  can be used in both for and while loops.
  - break terminates a loop
  - continue skips one iteration of a loop

'''
print('')
cargo = {
    'books': 15,
    'pencils': 15,
    'rulers': 5,
    'ink': 12,
    'erasers': 4
}
weight = int()
load_cargo = list()
# If weight exceeds 40, stop loading cargo.

# Add cargo key values to weight
for k, v in cargo.items():
    print(f'Current weight = {weight}\n')
    if weight >= 40:
        print('Maximum weight reached.')
        break
    elif weight + v >= 40:
        print('')
        print(f'Skipping: x{v} {k} due to weight restrictions.')
        print(f'Loaded cargo: {load_cargo}\n')
        continue
    else:
        print(f'Loading: x{v} {k} to cargo successfully.')
        weight += v
        load_cargo.append(k)
        print(f'Loaded cargo: {load_cargo}\n')

print('')
print(f'''Final cargo list loaded: {load_cargo}\n
Total weight: {weight}''')


print('\n')





fruit = ['orange', 'strawberry', 'apple']
foods = ['apple', 'orange', 'hummus', 'toast', 'apple', 'strawberry', 'orange']
fruit_counter = 0

for i in foods:
    if i in fruit:
        print('This is a fruit item')
        fruit_counter += 1
    else:
        print('This is NOT a fruit item')
        continue

print(fruit_counter)

print('\n')
# Quiz: Break the String
print('Quiz: Break the String')
# HINT: modify the headlines list to verify your loop works with different inputs
headlines = ["Local Bear Eaten by Man",
             "Legislature Announces New Laws",
             "Peasant Discovers Violence Inherent in System",
             "Cat Rescues Fireman Stuck in Tree",
             "Brave Knight Runs Away",
             "Papperbok Review: Totally Triffic"]

news_ticker = ""

news_ticker = ""
# write your loop here
for headline in headlines:
    news_ticker += headline + " "
    if len(news_ticker) >= 140:
        news_ticker = news_ticker[:140]
        break


# OR
# for headline in headlines:
#     if len(news_ticker) > 140:
#         print('news_ticker is over 140 characters.')
#         break
#
#     elif len(news_ticker + headline) > 140:
#         print('Skipping the next news headline')
#         continue
#
#     else:
#         print('Adding headline news to news_ticker.')
#         news_ticker += f'{headline}  '

# write your loop here
# for headline in headlines:

print('')
print(news_ticker)
print(len(news_ticker))

print('\n')
# Coding Quiz: Check for Prime Numbers

print('Coding Quiz: Check for Prime Numbers')
## Your code should check if each number in the list is a prime number
check_prime = [26, 39, 51, 53, 57, 79, 85]


prime = list()
non_prime = list()
## write your code here
## HINT: You can use the modulo operator to find a factor

# iterate through list elements:
for i in check_prime:
    # iterate through each element factors:
    for num in range(2, i):
        # if an element factor was found, declare it as non primal number.
        if (i % num) == 0:
            print('{} is not a primal number, {} is a factor of {}'.format(i, num, i))
            print('Adding {} to prime list\n'.format(i))
            non_prime.append(i)
            break
        # if num iteration reached the last number before i, declare i as a primal number.
        if num == i - 1:
            print(f'{i} = {num}')
            print('{} is a primal number.'.format(i))
            prime.append(i)
            print('Adding {} to non_prime list'.format(i))

print('')
print('Lists:')
print(prime)
print(non_prime)



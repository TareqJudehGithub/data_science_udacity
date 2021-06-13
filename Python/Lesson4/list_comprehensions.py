'''
List Comprehensions (listcomps)
 - List Comprehensions allow us to create a for loop in one step.
 - List Comprehensions feature is Python exclusive.
 - You create a list comprehension with brackets [], including an
   expression to evaluate for each element in an iterable.
 - We can add a conditional (if) after the iterable. The if keyword checks
   a condition in each iteration.
    listcomps structure:
        list_variable = [(expression) (iterable)]
    Example:
        list_variable = [x * 2 for x in range(5) if x % 2 = 0]

 - In case we needed to add an else, we first should move the 'if' right after
   the expression in the beginning.
   Example: list_variable = [x * 2 if x % 2 = 0 else x * 10
   for x in range(5)]


'''
print('\n')

cities = ['new york', 'mountain view', 'chicago', 'los angeles']

# Creating a new list using for loop:
print('Creating a new list using for loop')
cap_cities = list()
for city in cities:
    cap_cities.append(city.title())

print(cap_cities, '\n')


# Creating a new list using List Comprehensions:
print('Creating a new list using List Comprehensions')
upper_cities = [city.upper() for city in cities]

print(upper_cities, '\n')

# Create a list of square from 0 to 64 using List Comprehensions.
# i to the power of 2 iterating over all elements:
squares = [i ** 2 for i in range(1, 9) if i % 2 == 0]
# The conditional part, makes sure i ** 2 applies only on even elements.
print(squares, '\n')

# Using else
is_even = [f' {i} is even' if i % 2 == 0 else f'{i} is odd' for i in range(1, 9)]
print(is_even, '\n')


print('Quiz: Extract First Names')

names = ["Rick Sanchez", "Morty Smith", "Summer Smith", "Jerry Smith", "Beth Smith"]
first_name = list()

# Solution using for loop:
# for item in names:
#     for index, char in enumerate(item):
#         print(index, char)
#         if char == ' ':
#             first_name.append(item[0:index])

for item in names:
    first_name.append(item.split()[0])
print(first_name)

print('\n')
# Solution using listcomps

first_name_only = [i.split()[0] for i in names]
last_name = [name.split()[-1].title() for name in names]
print(first_name_only)
print(last_name)

print('')
print('bonus: full name\n')
# Bonus - Create a new list(full_name) containing STRINGS of first and last names:

# combining both first and last name lists using zip() function:
full_name_list = zip(first_name_only, last_name)

print('Full name list:')
# Using listcomps:
full_name_listcomps = [' '.join(name) for name in full_name_list]
print(full_name_listcomps)

# full name using for loop:
full_name = list()

for name in full_name_list:
    full_name.append(' '.join(name))


print('\n')
# Quiz: Multiples of Three
print('Quiz: Multiples of Three')

multiples_3 = list(x * 3 for x in range(1, 21))
print(multiples_3, '\n')

print('Quiz: Filter Names by Scores')
scores = {
             "Rick Sanchez": 70,
             "Morty Smith": 35,
             "Summer Smith": 82,
             "Jerry Smith": 23,
             "Beth Smith": 98
          }


passed = [name for (name, score) in scores.items() if score >= 65]

print(passed)


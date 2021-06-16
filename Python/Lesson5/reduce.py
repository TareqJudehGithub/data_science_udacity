from functools import reduce
# Python 3
'''
Reduce()
reduce applies a function of two arguments cumulatively to the elements of an
iterable, optionally starting with an initial argument.

 reduce(func, iterable[, initial])

'''


numbers = [3, 4, 6, 9, 34, 12]


def custom_sum(first, second):
    print(f'first: {first}, second: {second}')

    return first + second

# Since the initial value is provided here (100), reduce starts calculating from 100.
result = reduce(custom_sum, numbers, 100)
print(result)


print('\n')

# Exercises (map(), filter(), and reduce())

# Use map to print the square of each numbers rounded
# to three decimal places
my_floats = [4.35, 6.09, 3.25, 9.77, 2.16, 8.88, 4.59]
square = list(map(lambda num: round(num ** 2, 3), my_floats))
print(square)
# Use filter to print only the names that are less than
# or equal to seven letters
my_names = ["olumide", "akinremi", "josiah", "temidayo", "omoseun"]
my_names_filtered = list(filter(lambda name: len(name) <= 7, my_names))
print(my_names_filtered)
# Use reduce to print the product of these numbers
my_numbers = [4, 6, 9, 23, 5]


def numbers_product(a, b):
    return a * b


my_numbers_acc = reduce(numbers_product, my_numbers)
# using lambda:
product_result = reduce(lambda a, b: a * b, my_numbers)
print(my_numbers_acc, product_result)
print('\n')
# Fix all three respectively.
map_result = list(map(lambda x: round(x ** 2, 3), my_floats))
filter_result = list(filter(lambda name: len(name) <= 7 , my_names))
reduce_result = reduce(lambda num1, num2: num1 * num2, my_numbers)

print(map_result)
print(filter_result)
print(reduce_result)



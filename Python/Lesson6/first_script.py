import math

print('\nCongratulations on running this script!!\n')

greet = 'Hello, world!'


def mean(num_list):
    return sum(num_list) / len(num_list)

    # rounding reminder:
    # return round(sum(num_list) / len(num_list)) # round to the nearest integer
    # return math.ceil(sum(num_list) / len(num_list)) # round to the nearest integer
    # return math.floor(sum(num_list) / len(num_list))  # round to the nearest integer


def add_five(num_list):
    return [5 + num for num in num_list if num % 5 == 0]


def factorial(num):
    return math.factorial(num)
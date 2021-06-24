"""
Importing Local Scripts

- We import Python code from other scripts, using import keyword
    import module_name
- We can also use from keyword
    from module_name import variable/function/class name. Or we could just
    type * to import that script definitions.
- We can add alias also to modules
    import module_name as mod


"""

import first_script
import random
import math
import datetime
import timeit   # This module provides a simple way to time small bits of Python code

if __name__ == "__main__":
    print(first_script.greet)

    scores = [90, 75, 91, 85]

    score_avg = first_script.mean(scores)
    print(score_avg, '\n')

    odds_get_five = first_script.add_five(num_list=scores)
    print(odds_get_five, '\n')

    fact_value = first_script.factorial(4)
    print(fact_value, '\n')

# math.random library
print('random')
# https://www.w3schools.com/python/module_random.asp

rand_randint = random.randint(1, 10)
rand_choice = random.choice([1, 2, 3, 4, 5])
rand_range = random.randrange(1, 10)
print(rand_randint, rand_choice, rand_range)

# shuffle   takes a sequence and reorganize it's order randomly.
rand_list = [1, 2, 3, 4, 5, 6]
print(rand_list)
random.shuffle(rand_list)
print(rand_list)

# random.sample() The sample() method returns a list with a randomly
# selection of a specified number of items from a sequnce.
print(f'random.sample(): {random.sample(rand_list, k=2)}')

# return a random float value between 0 and 1
print(random.random())


print("*****************************")
# math
print(math.pow(3, 2))   # returns to the power of 2 to a given argument
print(math.sqrt(81))    # returns the square root of a given argument

# math.exp()    # return (e to the power of a given argument)
print(math.exp(3))
# fabs

print("============================\n")

word_list = list()
word_file = 'words.txt'

# Quiz: Password generator


def generate_password():

    # read from file words.txt
    try:
        with open('words.txt', mode='r') as file:
            for word in file:
                if 3 < len(word) < 8:
                    word_list.append(word.strip())

        # select 3 random items from list
        pass_list = random.sample(word_list, 3)

        # shuffle pass_list items order
        random.shuffle(pass_list)

        # convert pass list to string
        pass_str = "".join(pass_list)
    except Exception as error:
        print(error)
    else:

        return pass_str


print(generate_password())


print('\n')
print('datetime module\n')
# datetime module
today = datetime.datetime(2021, 6, 24)

date_today = today.today()
print('Today is: {}'.format(date_today))

year = datetime.datetime.year
print(f'We live in year: {today.year}')

"""
strftime() method
 -The method is called strftime(), and takes one parameter, format, to specify
  the format of the returned string
  - More on https://www.w3schools.com/python/python_datetime.asp
"""
# %x returns today's date formatted as mm/dd/year
formatted_date = today.strftime("%x")
print(formatted_date)

# we can also combine more than 1 code format in the same line of code:
format_today = today.strftime("%a %b %G")
print(format_today) # Today Month 2021


"""
Important modules to study:
    - csv: very convenient for reading and writing csv files
    - collections: useful extensions of the usual data types including OrderedDict, defaultdict 
    and namedtuple
    - random: generates pseudo-random numbers, shuffles sequences randomly and chooses random items
    - string: more functions on strings. This module also contains useful collections of letters like 
      string.digits (a string containing all characters which are valid digits).
    - re: pattern-matching in strings via regular expressions
    - math: some standard mathematical functions
    - os: interacting with operating systems
    - os.path: submodule of os for manipulating path names
    - sys: work directly with the Python interpreter
    - json: good for reading and writing json files (good for web work)

"""

print(timeit.timeit('greet="hello world"'))


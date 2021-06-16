'''
Docstrings
 A docstring is a type of comment used to explain the purpose of a function
 and how it should be used.
 - docstring is surrounded by triple quotes.  ''' ''' 
 - The first line of the docstring is a brief explanation of the function's purpose.    
 - A function descriptive docstring, should be place right below the function 
   definition line.    
'''


def population_density(population, density):
    """A function that calculates population density"""
    return population // density


print(population_density(population=1000, density=250))


print('\n')
# Quiz: Write a Docstring


def readable_timedelta(days):
    """readable_timedelta function calculates how many weeks and days in a given days argument."""
    weeks = days // 7
    remainder = days % weeks
    return "{} week(s) and {} day(s)".format(weeks, remainder)


print(readable_timedelta(100))

from time import sleep
'''
Errors in Python
There are two kinds of errors in Python - syntax errors and exceptions. 
Syntax errors occur when you don't use correct syntax and Python doesn't 
know how to run your code. Exceptions occur when Python runs into unexpected 
situations while executing your code and can happen even if you used correct syntax.

 - Syntax Error
    Syntax Errors, are errors that occur when a user miss type some code (typos).
     print('Hello, world!)

 - ValueError
    An object of the correct type but inappropriate value is passed as input to a
    built-in operation or function.

 - AssertionError
    An assert statement fails.

 - IndexError
    A sequence subscript is out of range.

 - KeyError
    A key can't be found in a dictionary.

- TypeError
    An object of an unsupported type is passed as input to an operation or function.

Try Statement
We can use try statements to handle exceptions. There are four clauses you can use (one more 
in addition to those shown in the video).

try: This is the only mandatory clause in a try statement. The code in this block is 
the first thing that Python runs in a try statement.
except: If Python runs into an exception while running the try block, it will jump to 
the except block that handles that exception.
else: If Python runs into no exceptions while running the try block, it will run the 
code in this block after running the try block.
finally: Before Python leaves this try statement, it will run the code in this finally 
block under any conditions, even if it's ending the program. E.g., if Python ran into 
an error while running code in the except or else block, this finally block will still 
be executed before stopping the program.
'''


def correct_value():
    while True:
        try:
            sleep(1)
            x = int(input('Enter a number: '))

        except Exception as error:
            print('')
            # print('That\'s not a valid number.\n')
            print(error)
        else:
            print(x)
            print('The end!')
            break
        finally:
            print("This is the finally part.\n")


# correct_value()

def user_info():
    """Practice exception function"""
    while True:
        try:
            username = input('Enter username: ').lower()

            # check if username containing any integers:
            if any(char.isnumeric() for char in username):
                print('no int allowed')
                continue
            # make sure user input is not empty:
            elif len(username) == 0:
                print('not enough char.')
                continue

        except Exception as v_error:
            print(f'Value Error: {v_error}')

        except KeyboardInterrupt:
            print('User aborted program. Good Bye!')
            break

        else:
            print(username)
            break
        finally:
            print('Thank you.\n')


# user_info()


print('\n')


def party_planner(cookies, people):

    leftovers = None
    cookies_each = None
    # TODO: Add a try-except block here to
    #       make sure no ZeroDivisionError occurs.
    try:
        cookies_each = cookies // people
        leftovers = cookies % people
    except ZeroDivisionError as error:
        print(f'Error: {error}\n')
        print('Please enter a valid amount.')
    else:
        return(cookies_each, leftovers)


# The main code block is below; do not edit this
lets_party = 'y'
while lets_party == 'y':

    cookies = int(input("How many cookies are you baking? "))
    people = int(input("How many people are attending? "))

    cookies_each, leftovers = party_planner(cookies, people)

    if cookies_each:  # if cookies_each is not None
        message = "\nLet's party! We'll have {} people attending, they'll each get to eat {} cookies, and we'll have {} left over."
        print(message.format(people, cookies_each, leftovers))

    lets_party = input("\nWould you like to party more? (y or n) ")


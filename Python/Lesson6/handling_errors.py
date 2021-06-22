from time import sleep
'''
Errors in Python
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


correct_value()

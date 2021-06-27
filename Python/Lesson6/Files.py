'''
Files: Reading & Writing

'''

# Opening a file

file = open('../../some_file.txt')
txt_file = file.read()
print(txt_file)
file.close()


print('\n')
'''
with 
 - with keyword allows us to open a file.
 - with auto-closes a file for you once you're finished using it.
'''

with open('readme.txt', mode='r') as file:
    read_me = file.read()
    print(read_me)

print('==================\n')

files = list()


with open('../../some_file.txt', mode='r') as new_file:
    for word in new_file:
        files.append(word)


print(files)

print('')

# Writing to files
'''
mode='w' Overwrite the file contents.
mode='a' Appends (adds to) the current file contents.
'''

with open('override_this.txt', mode='w') as file:
    write_me = file.write('Helloooo!')

with open('override_this.txt', mode='r') as file:
    print(file.read())

''' 
In 'w' or 'a' modes, .write() automatically creates a new file for us in the path
specified as the open() function argument. 


Calling the read Method with an Integer
 - If you pass the read method an integer argument, it will read up to that number of 
   characters, output all of them, and keep the 'window' at that position ready to read on.
 - Each time we called read on the file with an integer argument, it read up to that 
 number of characters, outputted them, and kept the 'window' at that position for the 
 next call to read. 
'''
print('\n')
with open('camelot.txt', mode='r') as file:
    print(file.read(37))
    print(file.read())

print('\n')

"""
Reading Line by Line

 readline() reads files line by line, and keep a 'window' open at that position for the 
 next call to read.

"""
with open('camelot.txt', mode='r') as file:
    print(file.readline())
    print(file.readline())

"""
readlines() method
    readlines() reads all file content and turns it into a list object.
    
"""
camelot_list = list()
with open('camelot.txt', mode='r') as file:
    # read_me = file.readlines()
    # print(type(read_me))
    # print(read_me)
    # print(len(read_me))

    print('')
    for word in file:
        # camelot_list.append(word.split()) # turns each WORD inside the file into a separate element.
        camelot_list.append(word.strip()) # turns each LINE inside the file into a separate element.

print(camelot_list)


# Quiz: Flying Circus Cast List

# def create_cast_list(filename):
#
#     cast_list = []
#     #use with to open the file filename
#     with open(filename, mode='r') as file:
#         #use the for loop syntax to process each line
#         for name in file:
#             #and add the actor name to cast_list
#             cast_list.append(name.split())
#     return cast_list
#
#
# cast_list = create_cast_list('flying_circus_cast.txt')
# for actor in cast_list:
#     print(actor)

print('\n')
# initiate empty list to hold user input and sum value of zero
user_list = []
list_sum = 0

# seek user input for ten numbers
# for i in range(10):
#     userInput = int(input("Enter any 2-digit number: "))
#
#     # check to see if number is even and if yes, add to list_sum
#     # print incorrect value warning  when ValueError exception occurs
#     try:
#         number = userInput
#         user_list.append(number)
#         if number % 2 == 0:
#             list_sum += number
#     except ValueError:
#         print("Incorrect value. That's not an int!")
#
# print("user_list: {}".format(user_list))
# print("The sum of the even numbers in user_list is: {}.".format(list_sum))


def sum_inputs():
    """A function that calculates sum of even numbers entries"""

    # creating new lists for total and for odd inputs
    num_list = list()
    even_list = list()

    for i in range(5):
        while True:
            my_input = int(input('Enter a number: '))
            try:
                num_list.append(my_input)

                if my_input % 2 == 0:
                    even_list.append(my_input)
                    print(even_list)
                if my_input < 1:
                    continue

            except ZeroDivisionError:
                print('Please enter another number')

            except KeyboardInterrupt:
                print('User aborted program. Good Bye!')
                break

            except Exception as error:
                print(error)


            else:
                # sum of odd numbers:
                sum(even_list)
                break

    print(f'{num_list}\n{sum(even_list)}')


sum_inputs()






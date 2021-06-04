'''
Tuples
 - A tuple is an immutable, ordered data structure that can be indexed and
   sliced like a list.
   Tuples are defined by listing a sequence of elements separated by commas,
   optionally contained within parentheses: ().
 - Tuples are often used to store related pieces of information.
 - Tuples are similar to lists in that they store an ordered collection
   of objects which can be accessed by their indices.
 - Unlike lists, however, tuples are immutable you can't add and remove
    items from tuples, or sort them in place.

 - To summarize:
    - Each item in a dictionary contains two parts (a key and a value), the items
      in a dictionary are not ordered, and we have seen in this lesson examples of nested dictionaries.

'''
new_tuple = tuple()
print(type(new_tuple))

or_like_this = ()
print(type(or_like_this))

# Even without parentheses we still could define a tuple
AngkorWat = 13.4125, 103.866667
print(AngkorWat)

print('''
AngkorWat Wat is at latitude: {}
AngkorWat Wat is at longtitude: {}
'''.format(AngkorWat[0], AngkorWat[1])
)


# We can assign multiple values to multiple variables using tuple unpacking:
John, Ali, David = 79, 85, 90
print('Scores are:\nJohn {},\nAli {},\nDavid {}'.format(John, Ali, David))




'''
Dictionaries And Identity Operators
 Dictionaries (dict)
 A dictionary is a mutable data type that stores mappings of unique keys to values.
  - Dictionaries store pairs of elements: key and values.
  - Dictionaries can have keys of any immutable type, like integers or tuples, not just strings.
  - It's not even necessary for every key to have the same type!

  -

  - dictionary = {key: value)
    Example of a dictionary:
        >>> elements = {'hydrogen': 1, 'helium': 2, 'carbon': 6}

  - We can look up a dictionary value or insert a new one, by including a key between
  square brackets as an argument.
        Example:
            >>> print(elements['carbon'])      #prints the value mapped to 'carbon'.
            >> 6
            >>> elements['carbon'] = 12     # adds a new value to 'carbon'.
            >>> print(elements['carbon'])
            >>> 12

  - Dictionaries can have keys of any immutable type, not just integer like the case in
  Lists.
  - We check if a key is in a dictionary, using the 'in' keyword.
            >>> 'helium' input() elements
            >>> True
  -  Dicts have a related method that's also useful: get().
      get looks up values in a dictionary, but unlike square brackets, get returns None (or
      a default value of your choice) if the key isn't found, instead of returns an *error.
            >>> elements.get('dilithium')
            >>> None
  Identity operators:
     keyword    Operator
     is         evaluates if both sides have the same identity.
     is not     is not evaluates if both sides have different identities.

    * If you expect lookups to sometimes fail, get might be a better tool than normal square bracket
      lookups because errors can crash your program.
'''

new_dictionary = dict()
elements = {'hydrogen': 1, 'helium': 2, 'carbon': 6}
print(elements)

print('')
# add a new element to a dict:
elements['iron'] = 4
print(elements)

print('')
# change an element value:
elements['helium'] = 3
print(elements)

print('')
# checks if an element exist in a dict:
print('hydrogen' in elements)

print('')
# checks if an element key equals its value in a dict:
print(elements['hydrogen'] is 1)    # >>> True
print(elements['carbon'] is not 10) # >>> True
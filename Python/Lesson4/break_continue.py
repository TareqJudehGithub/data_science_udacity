'''
Break, Continue
  - A loop will terminate immediately, if it encounters a 'break' statement.
  - Break statement,  can be used in both for and while loops.
  - break terminates a loop
  - continue skips one iteration of a loop

'''
print('')
cargo = {
    'books': 15,
    'pencils': 15,
    'rulers': 5,
    'ink': 12,
    'erasers': 4
}
weight = int()
load_cargo = list()
# If weight exceeds 40, stop loading cargo.

# Add cargo key values to weight
for k, v in cargo.items():
    print(f'Current weight = {weight}\n')
    if weight >= 40:
        print('Maximum weight reached.')
        break
    elif weight + v >= 40:
        print('')
        print(f'Skipping: x{v} {k} due to weight restrictions.')
        print(f'Loaded cargo: {load_cargo}\n')
        continue
    else:
        print(f'Loading: x{v} {k} to cargo successfully.')
        weight += v
        load_cargo.append(k)
        print(f'Loaded cargo: {load_cargo}\n')

print('')
print(f'''Final cargo list loaded: {load_cargo}\n
Total weight: {weight}''')


print('\n')





fruit = ['orange', 'strawberry', 'apple']
foods = ['apple', 'orange', 'hummus', 'toast', 'apple', 'strawberry', 'orange']
fruit_counter = 0

for i in foods:
    if i in fruit:
        print('This is a fruit item')
        fruit_counter += 1
    else:
        print('This is NOT a fruit item')
        continue

print(fruit_counter)
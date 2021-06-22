names = input('Enter names list: ').title().split(', ')
grades = input('Enter grades list: ').split(', ')
print('')

print(names)
print(grades)
print('')

# creating a new list students_marks
students_marks = zip(names, grades)
print('')


for i, x in students_marks:
    print(i, x)

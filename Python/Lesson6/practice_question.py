# Practice Question: Match Flower name

def create_flower_dict(filename):
    flowers_dict = dict()
    with open(filename, mode='r') as file:
        for line in file:
            letter = line.split(": ")[0].lower()
            flower = line.split(": ")[1].upper()
            flowers_dict[letter] = flower
    return flowers_dict


def match_flower_name():
    flower_dict = create_flower_dict('flowers.txt')
    name = input('Enter your first name: ').lower()
    first_letter = name[0]
    print(f"Unique flower name with the first letter: {flower_dict[first_letter]}")


match_flower_name()
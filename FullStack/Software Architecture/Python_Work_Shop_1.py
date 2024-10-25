# pipeline -- maybe keep on mapping this to refine the mapping?


your_name = input("Enter your name: ")
print("are your aviel?" + str(your_name == "aviel"))
your_age = int(input("Enter your age: "))
print(your_age >= 18)
your_height = int(input("Enter your height(cm): "))
print(your_height >= 180)

# error handling

# using the return value 
def dict_validator(dict_to_validate):
    if dict_to_validate.get('name') is None or  not type(dict_to_validate.get('name')) is str:
        print("missing or incorrect type field: name")
    if dict_to_validate.get('age') is None or  not type(dict_to_validate.get('name')) is int:
        print("missing or incorrect type field: name")



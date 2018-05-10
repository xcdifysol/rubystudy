my_list = ['p','r','o','g','r','a','m','i','z']
# elements 3rd to 5th
print(my_list[2:5])

# elements beginning to 4th
print(my_list[:-5])

# elements 6th to end
print(my_list[5:])

# elements beginning to end
print(my_list[:])


# insert in to array
my_list.insert(1,3)
print(my_list)

my_list[2:2] = [5, 7]
print(my_list)


# delete 
# delete one item
del my_list[2]
print(my_list)


# delete multiple items
del my_list[1:5] 
print(my_list)

# delete entire list
del my_list       


# Error: List not defined
print(my_list)
# Task 2.1
def task2_1(filename, quantity, maximum):
    with open(filename, "w") as file:
        for _ in range(quantity):
            num = random.randint(0, maximum)
            file.write(str(num) + "\n")


# Generate 1000 random numbers between 0 and 5000
task2_1(
    "randomnumbers_WongJiaXi_YourCentreNumber_YourIndexNumber.txt",
    1000,
    5000
)

# Task 2.2
def task2_2(list_of_integers):
    # Base case
    if len(list_of_integers) <= 1:
        return list_of_integers

    # Split the list into two halves
    mid = len(list_of_integers) // 2
    left = task2_2(list_of_integers[:mid])
    right = task2_2(list_of_integers[mid:])

   
    sorted_list = []
    i = j = 0

    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            sorted_list.append(left[i])
            i += 1
        else:
            sorted_list.append(right[j])
            j += 1

    # Add any remaining elements
    sorted_list.extend(left[i:])
    sorted_list.extend(right[j:])

    return sorted_list

# Task 2.3
def task2_3(filename_in, filename_out):
    # Read numbers from the input file
    with open(filename_in, "r") as file:
        numbers = []
        for line in file:
            numbers.append(int(line.strip()))

    # Sort the numbers
    sorted_numbers = task2_2(numbers)

    # Write the sorted numbers to the output file
    with open(filename_out, "w") as file:
        for number in sorted_numbers:
            file.write(str(number) + "\n")

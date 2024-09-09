# def count_loops(filename):
#     enter_times = []
#     exit_times = []

#     with open(filename, 'r') as file:
#         for line in file:
#             if "Entering loop at:" in line:
#                 time = int(line.split(": ")[1])
#                 enter_times.append(time)

#             elif "Exiting loop at:" in line:
#                 time = int(line.split(": ")[1])
#                 exit_times.append(time)

#     return enter_times, exit_times

# def calculate_differences(enter_times, exit_times):
#     differences = []
#     for i in range(len(enter_times)):
#         differences.append(exit_times[i] - enter_times[i])
#     return differences

# def calculate_average(differences):
#     return sum(differences) / len(differences)


# filename = 'cfu.txt'
# enter_times, exit_times = count_loops(filename)
# differences = calculate_differences(enter_times, exit_times)

# print(f"Time: {calculate_average(differences)}")


def check_file(file_path):
    with open(file_path, 'r') as file:
        filter_val = None
        input_val = None

        for line in file:
            if line.startswith("filter_val"):
                filter_val = int(line.split('=')[1].strip())
            elif line.startswith("input_val"):
                input_val = int(line.split('=')[1].strip())

            if filter_val == 0 and input_val == 0:
                return True

    return False

# Replace 'your_file.txt' with the path to your file
file_path = 'your_file.txt'
if check_file(file_path):
    print("Found a pair with filter_val = 0 and input_val = 0")
else:
    print("No such pair found")



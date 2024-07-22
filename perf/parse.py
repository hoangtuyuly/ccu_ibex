def count_loops(filename):
    enter_times = []
    exit_times = []

    with open(filename, 'r') as file:
        for line in file:
            if "Entering loop at:" in line:
                time = int(line.split(": ")[1])
                enter_times.append(time)

            elif "Exiting loop at:" in line:
                time = int(line.split(": ")[1])
                exit_times.append(time)

    return enter_times, exit_times

def calculate_differences(enter_times, exit_times):
    differences = []
    for i in range(len(enter_times)):
        differences.append(exit_times[i] - enter_times[i])
    return differences

def calculate_average(differences):
    return sum(differences) / len(differences)


filename = 'orginal.txt'
enter_times, exit_times = count_loops(filename)
differences = calculate_differences(enter_times, exit_times)

print(f"Time: {calculate_average(differences)}")



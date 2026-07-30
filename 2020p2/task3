def task3_1(quantity_of_data):
    units = {
        "KB": 1000,
        "MB": 1000**2,
        "GB": 1000**3,
        "TB": 1000**4
    }

    # Check if the string ends with a valid unit
    for unit in units:
        if quantity_of_data.endswith(unit):
            number = quantity_of_data[:-2]  # Extract the number part

            # Check if the number part contains only digits
            if number.isdigit():
                bytes_value = int(number) * units[unit]
                return print(bytes_value)

    # Invalid input
    return print("invalid data")

def task3_2(quantity_of_data):
    units = {
        "KB": 10**3,
        "KiB": 2**10,
        "MB": 10**6,
        "MiB": 2**20,
        "GB": 10**9,
        "GiB": 2**30,
        "TB": 10**12,
        "TiB": 2**40
    }

    for unit in units:
        if quantity_of_data.endswith(unit):
            number = quantity_of_data[:-len(unit)]
            if number.isdigit():
                return int(number) * units[unit]

    return "invalid data"

def task3_3(quantity_of_data, target_unit):
    units = {
        "KB": 10**3,
        "KiB": 2**10,
        "MB": 10**6,
        "MiB": 2**20,
        "GB": 10**9,
        "GiB": 2**30,
        "TB": 10**12,
        "TiB": 2**40
    }

    # Check if target unit is valid
    if target_unit not in units:
        return "invalid data"

    # Get number of bytes using task3_2
    bytes_data = task3_2(quantity_of_data)

    # Check if task3_2 returned an error
    if bytes_data == "invalid data":
        return "invalid data"

    # Convert to target unit
    result = bytes_data / units[target_unit]
    return result

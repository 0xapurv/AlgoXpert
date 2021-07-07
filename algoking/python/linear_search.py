def linear_search(sequence, target):
    for index, item in enumerate(sequence):
        if item == target:
            return index
    return None


if __name__ == "__main__":
    user_input = input("Enter numbers separated by space:\n").strip()
    sequence = [int(item) for item in user_input.split(" ")]

    target_input = input("Enter a single number to be found in the list:\n")
    target = int(target_input)
    result = linear_search(sequence, target)
    if result is not None:
        print(f"{target} found at position : {result}")
    else:
        print("Not found")

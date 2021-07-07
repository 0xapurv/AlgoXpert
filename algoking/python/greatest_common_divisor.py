def greatest_common_divisor(a, b):
    return a if b == 0 else greatest_common_divisor(b, a % b)


def gcd_by_iterative(x, y):
    while y:
        x, y = y, x % y
    return x


def main():
    try:
        nums = input("Enter two integers separated by space ( ): ").split(" ")
        num_1 = int(nums[0])
        num_2 = int(nums[1])
        print(
            f"greatest_common_divisor({num_1}, {num_2}) = {greatest_common_divisor(num_1, num_2)}"
        )
        print(
            f"By iterative gcd({num_1}, {num_2}) = {gcd_by_iterative(num_1, num_2)}")
    except (IndexError, UnboundLocalError, ValueError):
        print("Wrong input")


if __name__ == "__main__":
    main()

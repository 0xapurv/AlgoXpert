class PYTHON {
  static Map code = {
    "Depth_First_Search": """from typing import Set, Dict


def depth_first_search(graph: Dict, start: str) -> Set[int]:
    explored, stack = set(start), [start]
    while stack:
        v = stack.pop()
        # one difference from BFS is to pop last element here instead of first one
        for w in graph[v]:
            if w not in explored:
                explored.add(w)
                stack.append(w)
    return explored


G = {
    "A": ["B", "C", "D"],
    "B": ["A", "D", "E"],
    "C": ["A", "F"],
    "D": ["B", "D"],
    "E": ["B", "F"],
    "F": ["C", "E", "G"],
    "G": ["F"],
}

if __name__ == "__main__":
    print(depth_first_search(G, "A"))""",
    "Breadth_First_Search": """G = {
    "A": ["B", "C"],
    "B": ["A", "D", "E"],
    "C": ["A", "F"],
    "D": ["B"],
    "E": ["B", "F"],
    "F": ["C", "E"],
}


def bfs(graph, start):
    explored, queue = set(), [start]  # collections.deque([start])
    explored.add(start)
    while queue:
        v = queue.pop(0)  # queue.popleft()
        for w in graph[v]:
            if w not in explored:
                explored.add(w)
                queue.append(w)
    return explored


if __name__ == "__main__":
    print(bfs(G, "A"))""",
    "Binary_Search": """def binary_search(sorted_collection, item):
    left = 0
    right = len(sorted_collection) - 1

    while left <= right:
        midpoint = left + (right - left) // 2
        current_item = sorted_collection[midpoint]
        if current_item == item:
            return midpoint
        elif item < current_item:
            right = midpoint - 1
        else:
            left = midpoint + 1
    return None


def __assert_sorted(collection):
    if collection != sorted(collection):
        raise ValueError("Collection must be ascending sorted")
    return True


if __name__ == "__main__":
    import sys

    user_input = input("Enter numbers separated by spaces:\n").strip()
    collection = [int(item) for item in user_input.split(" ")]
    try:
        __assert_sorted(collection)
    except ValueError:
        sys.exit("Sequence must be ascending sorted to apply binary search")

    target_input = input("Enter a single number to be found in the list:\n")
    target = int(target_input)
    result = binary_search(collection, target)
    if result is not None:
        print(f"{target} found at positions: {result}")
    else:
        print("Not found")""",
    "Linear_Search": """def linear_search(sequence, target):
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
        print("Not found")""",
    "Bubble_Sort": """def bubble_sort(collection):
    length = len(collection)
    for i in range(length - 1):
        swapped = False
        for j in range(length - 1 - i):
            if collection[j] > collection[j + 1]:
                swapped = True
                collection[j], collection[j +
                                          1] = collection[j + 1], collection[j]
        if not swapped:
            break  # Stop iteration if the collection is sorted.
    return collection


if __name__ == "__main__":
    import time

    user_input = input("Enter numbers separated by a comma:").strip()
    unsorted = [int(item) for item in user_input.split(",")]
    start = time.process_time()
    print(*bubble_sort(unsorted), sep=",")
    print(f"Processing time: {time.process_time() - start}")""",
    "Heap_Sort": """""",
    "Insertion_Sort": """""",
    "Merge_Sort": """""",
    "Quick_Sort": """""",
    "Selection_Sort": """""",
    "Even_Odd": """""",
    "Factorial": """""",
    "Fibonacci": """from random import randint


def fibonacci_slow(n: int) -> int:
    if n <= 1:
        return n
    else:
        return fibonacci_slow(n-1)+fibonacci_slow(n-2)


def fibonacci_fast(n: int) -> int:
    first, second = 0, 1
    for i in range(n):
        first, second = second, first + second
    return first


if __name__ == "__main__":

    # Stress Tester
    # while True:
    #     n = randint(2, 30)
    #     print(n)
    #     fib_f = fibonacci_fast(n)
    #     fib_s = fibonacci_slow(n)
    #     print(fib_f, fib_s)
    #     if fib_f != fib_s:
    #         break

    # Comment the following lines if you are running stress tester
    n = int(input())
    print(fibonacci_fast(n))""",
    "Greatest_Common_Divisor": """def greatest_common_divisor(a, b):
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
    main()""",
    "Lowest_Common_Multiple": """""",
    "Max_Pairwise_Product": """from random import randint


def max_pairwise_product_fast(n, numbers):
    numbers.sort(reverse=True)
    product = numbers[0]*numbers[1]
    return product


def max_pairwise_product_slow(n, numbers):
    product = 0
    for j in range(len(numbers)):
        for k in range(len(numbers)):
            if j != k and numbers[j]*numbers[k] > product:
                product = numbers[j]*numbers[k]
    return product


if __name__ == "__main__":

    # Stress Tester
    # while True:
    #     n = randint(2, 100)
    #     print(n)
    #     numbers = []
    #     for i in range(n):
    #         numbers.append(randint(0, 100000))
    #     print(numbers)
    #     product_f = max_pairwise_product_fast(n, numbers)
    #     product_s = max_pairwise_product_fast(n, numbers)
    #     print(product_f, product_s)
    #     if product_f != product_s:
    #         break

    # Comment the following lines if you are running stress tester
    n = int(input())
    numbers = input()
    numbers = list(map(int, numbers.split()))
    product_f = max_pairwise_product_fast(n, numbers)
    print(product_f)""",
    "Prime_Numbers": """""",
    "Swap_Numbers": """""",
    "AVL_Tree": """""",
    "Array_Methods": """""",
    "Binary_Search_Tree": """""",
    "Huffman_Tree": """""",
    "Infix_to_Postfix": """""",
    "Infix_to_Prefix": """""",
    "Intersect_Arrays": """""",
    "Postfix_to_Infix": """""",
    "Prefix_to_Infix": """""",
    "Priority_Queue": """""",
    "Queue_using_Array": """""",
    "Queue_using_Linked_List": """""",
    "Queue_using_Stacks": """""",
    "Reverse_Linked_List": """""",
    "Stack_using_Array": """""",
    "Stack_using_Linked_List": """""",
    "Stack_using_Queues": """""",
    "Union_Array": """""",
    "Union_Sorted_Array": """""",
    "Knapsack_Problem": """""",
  };
}

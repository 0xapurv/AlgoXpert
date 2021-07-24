from random import randint


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
    print(fibonacci_fast(n))

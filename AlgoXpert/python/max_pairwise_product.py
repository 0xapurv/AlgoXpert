from random import randint


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
    print(product_f)

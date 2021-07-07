#include <iostream>
#include <vector>
#include <algorithm>
#include <random>

int MaxPairwiseProduct(const std::vector<int>& numbers) {
    int max_product = 0;
    int n = numbers.size();

    for (int first = 0; first < n; ++first) {
        for (int second = first + 1; second < n; ++second) {
            max_product = std::max(max_product,
                numbers[first] * numbers[second]);
        }
    }

    return max_product;
}
//Using sorting
int MaxPairwiseProductFast(std::vector<int>& numbers){
	int max_product = 0;
    int n = numbers.size();
    
    sort(numbers.begin(),numbers.end());
    max_product = numbers[n-2]*numbers[n-1];
    
    return max_product;
}
//Print function
void print(std::vector <int> const &a) {
   std::cout << "The vector elements are : ";
   
   for(int i=0; i < a.size(); i++)
      std::cout << a.at(i) << ' ';
}

int main() {
//	Main Driver code
	/*
    int n;
    std::cin >> n;
    std::vector<int> numbers(n);
    for (int i = 0; i < n; ++i) {
        std::cin >> numbers[i];
    }*/
//    Stress Tester below
    while (true){
    	int a;
    	int n;
    	n = rand()%10+2;
    	std::vector<int> numbers(n);
    	for(int i=0;i<n;i++){
    		a = rand()%10000;
    		numbers[i]=a;
		}
		std::cout << "\n" << n << "\n";
		print(numbers);
		std::cout << "\n";
		if (MaxPairwiseProduct(numbers)!=MaxPairwiseProductFast(numbers)){
			std::cout << "Wrong";
			break;
		}
	}
    
    return 0;
}

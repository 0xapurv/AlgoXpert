class CPP {
  static Map code = {
    "Depth_First_Search": """#include<bits/stdc++.h> 
using namespace std; 

class Graph 
{ 
	int V;

	list<int> *adj; 
 
	void DFSUtil(int v, bool visited[]); 
public: 
	Graph(int V);

	void addEdge(int v, int w); 
	void DFS(int v); 
}; 

Graph::Graph(int V) 
{ 
	this->V = V; 
	adj = new list<int>[V]; 
} 

void Graph::addEdge(int v, int w) 
{ 
	adj[v].push_back(w); 
} 
void Graph::DFSUtil(int v, bool visited[]) 
{
	visited[v] = true; 
	cout << v << " "; 

	list<int>::iterator i; 
	for (i = adj[v].begin(); i != adj[v].end(); ++i) 
		if (!visited[*i]) 
			DFSUtil(*i, visited); 
} 

void Graph::DFS(int v) 
{ 
	bool *visited = new bool[V]; 
	for (int i = 0; i < V; i++) 
		visited[i] = false; 

	DFSUtil(v, visited); 
} 
 
int main() 
{ 
	Graph g(6); 
	g.addEdge(0, 1); 
	g.addEdge(0, 2); 
	g.addEdge(1, 2); 
	g.addEdge(2, 0); 
	g.addEdge(2, 3); 
	g.addEdge(3, 3); 
	g.addEdge(2, 4); 
	g.addEdge(2, 5); 
	g.addEdge(4, 5);
	g.addEdge(5, 1); 

	cout << "Following is Depth First Traversal "
		<< "(starting from vertex 5) \n"; 
	g.DFS(5); 

	return 0; 
} """,
    "Breadth_First_Search": """#include<iostream> 
#include <list> 

using namespace std; 

class Graph 
{ 
	int V;

	list<int> *adj; 
public: 
	Graph(int V);

	void addEdge(int v, int w); 

	void BFS(int s); 
}; 

Graph::Graph(int V) 
{ 
	this->V = V; 
	adj = new list<int>[V]; 
} 

void Graph::addEdge(int v, int w) 
{ 
	adj[v].push_back(w);
} 

void Graph::BFS(int s) 
{ 
	bool *visited = new bool[V]; 
	for(int i = 0; i < V; i++) 
		visited[i] = false; 
	list<int> queue; 

	visited[s] = true; 
	queue.push_back(s); 
	list<int>::iterator i; 

	while(!queue.empty()) 
	{ 
		s = queue.front(); 
		cout << s << " "; 
		queue.pop_front(); 

		for (i = adj[s].begin(); i != adj[s].end(); ++i) 
		{ 
			if (!visited[*i]) 
			{ 
				visited[*i] = true; 
				queue.push_back(*i); 
			} 
		} 
	} 
} 

int main() 
{ 
	Graph g(6); 
	g.addEdge(0, 1); 
	g.addEdge(0, 2); 
	g.addEdge(1, 2); 
	g.addEdge(2, 0); 
	g.addEdge(2, 3); 
	g.addEdge(3, 3); 
	g.addEdge(2, 4); 
	g.addEdge(2, 5); 
	g.addEdge(4, 5);
	g.addEdge(5, 1); 

	cout << "Following is Breadth First Traversal "
		<< "(starting from vertex 5) \n"; 
	g.BFS(5); 

	return 0; 
} """,
    "Binary_Search": """#include <iostream>
using namespace std;
int binary_search(int a[], int l, int r, int key)
{
	while (l <= r)
	{
		int m = l + (r - l) / 2;
		if (key == a[m])
			return m;
		else if (key < a[m])
			r = m - 1;
		else
			l = m + 1;
	}
	return -1;
}
int main(int argc, char const *argv[])
{
	int n, key;
	cout << "Enter size of array: ";
	cin >> n;
	cout << "Enter array elements: ";
	int a[n];
	for (int i = 0; i < n; ++i)
	{
		cin >> a[i];
	}
	cout << "Enter search key: ";
	cin >> key;
	int res = binary_search(a, 0, n - 1, key);
	if (res != -1)
		cout << key << " found at index " << res << endl;
	else
		cout << key << " not found" << endl;
	return 0;
}""",
    "Linear_Search": """#include <iostream>
using namespace std;

int LinearSearch(int *array, int size, int key)
{
	for (int i = 0; i < size; ++i)
	{
		if (array[i] == key)
		{
			return i;
		}
	}

	return -1;
}

int main()
{
	int size;
	cout << "\nEnter the size of the Array : ";
	cin >> size;

	int array[size];
	int key;

	cout << "\nEnter the Array of " << size << " numbers : ";
	for (int i = 0; i < size; i++)
	{
		cin >> array[i];
	}

	cout << "\nEnter the number to be searched : ";
	cin >> key;

	int index = LinearSearch(array, size, key);
	if (index != -1)
	{
		cout << "\nNumber found at index : " << index;
	}
	else
	{
		cout << "\nNot found";
	}

	return 0;
}""",
    "Bubble_Sort": """#include <iostream>
#include <vector>
using namespace std;

int main()
{
	int n;
	short swap_check = 1;
	cout << "Enter the amount of numbers to sort: ";
	cin >> n;
	vector<int> numbers;
	cout << "Enter " << n << " numbers: ";
	int num;
	for (int i = 0; i < n; i++)
	{
		cin >> num;
		numbers.push_back(num);
	}
	for (int i = 0; (i < n) && (swap_check == 1); i++)
	{
		swap_check = 0;
		for (int j = 0; j < n - 1 - i; j++)
		{
			if (numbers[j] > numbers[j + 1])
			{
				swap_check = 1;
				swap(numbers[j], numbers[j + 1]);
			}
		}
	}

	cout << "\nSorted Array : ";
	for (int i = 0; i < numbers.size(); i++)
	{
		if (i != numbers.size() - 1)
		{
			cout << numbers[i] << ", ";
		}
		else
		{
			cout << numbers[i] << endl;
		}
	}
	return 0;
}""",
    "Heap_Sort": """#include <algorithm>
#include <iostream>

void heapify(int *a, int i, int n) {
    int largest = i;
    const int l = 2 * i + 1;
    const int r = 2 * i + 2;

    if (l < n && a[l] > a[largest])
        largest = l;

    if (r < n && a[r] > a[largest])
        largest = r;

    if (largest != i) {
        std::swap(a[i], a[largest]);
        heapify(a, n, largest);
    }
}

void heapsort(int *a, int n) {
    for (int i = n - 1; i >= 0; --i) {
        std::swap(a[0], a[i]);
        heapify(a, 0, i);
    }
}

void build_maxheap(int *a, int n) {
    for (int i = n / 2 - 1; i >= 0; --i) {
        heapify(a, i, n);
    }
}

int main() {
    int n;
    std::cout << "Enter number of elements of array\n";
    std::cin >> n;
    int a[20];
    for (int i = 0; i < n; ++i) {
        std::cout << "Enter Element " << i << std::endl;
        std::cin >> a[i];
    }

    build_maxheap(a, n);
    heapsort(a, n);
    std::cout << "Sorted Output\n";
    for (int i = 0; i < n; ++i) {
        std::cout << a[i] << std::endl;
    }

    std::getchar();
}""",
    "Insertion_Sort": """#include <iostream>
using namespace std;

int main()
{
	int n;
	cout << "\nEnter the length of your array : ";
	cin >> n;
	int Array[n];
	cout << "\nEnter any " << n << " Numbers for Unsorted Array : ";

	for (int i = 0; i < n; i++)
	{
		cin >> Array[i];
	}

	for (int i = 1; i < n; i++)
	{
		int temp = Array[i];
		int j = i - 1;
		while (j >= 0 && temp < Array[j])
		{
			Array[j + 1] = Array[j];
			j--;
		}
		Array[j + 1] = temp;
	}

	cout << "\nSorted Array : ";
	for (int i = 0; i < n; i++)
	{
		cout << Array[i] << "\t";
	}
	return 0;
}""",
    "Merge_Sort": """#include <iostream>
using namespace std;

void merge(int arr[], int l, int m, int r)
{
    int i, j, k;
    int n1 = m - l + 1;
    int n2 = r - m;

    int L[n1], R[n2];

    for (i = 0; i < n1; i++)
        L[i] = arr[l + i];
    for (j = 0; j < n2; j++)
        R[j] = arr[m + 1 + j];

    i = 0;
    j = 0;
    k = l;
    while (i < n1 && j < n2)
    {
        if (L[i] <= R[j])
        {
            arr[k] = L[i];
            i++;
        }
        else
        {
            arr[k] = R[j];
            j++;
        }
        k++;
    }

    while (i < n1)
    {
        arr[k] = L[i];
        i++;
        k++;
    }

    while (j < n2)
    {
        arr[k] = R[j];
        j++;
        k++;
    }
}

void mergeSort(int arr[], int l, int r)
{
    if (l < r)
    {

        int m = l + (r - l) / 2;

        mergeSort(arr, l, m);
        mergeSort(arr, m + 1, r);

        merge(arr, l, m, r);
    }
}

void show(int A[], int size)
{
    int i;
    for (i = 0; i < size; i++)
        cout << A[i] << "\n";
}

int main()
{
    int size;
    cout << "\nEnter the number of elements : ";

    cin >> size;

    int arr[size];

    cout << "\nEnter the unsorted elements : ";

    for (int i = 0; i < size; ++i)
    {
        cout << "\n";
        cin >> arr[i];
    }

    mergeSort(arr, 0, size);

    cout << "Sorted array\n";
    show(arr, size);
    return 0;
}""",
    "Quick_Sort": """#include <iostream>
using namespace std;

int partition(int arr[], int low, int high)
{
    int pivot = arr[high];
    int i = (low - 1);

    for (int j = low; j < high; j++)
    {

        if (arr[j] <= pivot)
        {
            i++;
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
        }
    }
    int temp = arr[i + 1];
    arr[i + 1] = arr[high];
    arr[high] = temp;
    return (i + 1);
}

void quickSort(int arr[], int low, int high)
{
    if (low < high)
    {

        int p = partition(arr, low, high);

        quickSort(arr, low, p - 1);
        quickSort(arr, p + 1, high);
    }
}

void show(int arr[], int size)
{
    for (int i = 0; i < size; i++)
        cout << arr[i] << "\n";
}

int main()
{
    int size;
    cout << "\nEnter the number of elements : ";

    cin >> size;

    int arr[size];

    cout << "\nEnter the unsorted elements : ";

    for (int i = 0; i < size; ++i)
    {
        cout << "\n";
        cin >> arr[i];
    }
    quickSort(arr, 0, size);
    cout << "Sorted array\n";
    show(arr, size);
    return 0;
}""",
    "Selection_Sort": """#include <iostream>
using namespace std;

int main()
{
	int Array[6];
	cout << "\nEnter any 6 Numbers for Unsorted Array : ";
	for (int i = 0; i < 6; i++)
	{
		cin >> Array[i];
	}
	for (int i = 0; i < 6; i++)
	{
		int min = i;
		for (int j = i + 1; j < 6; j++)
		{
			if (Array[j] < Array[min])
			{
				min = j;
			}
		}
		int temp = Array[i];
		Array[i] = Array[min];
		Array[min] = temp;
	}
	cout << "\nSorted Array : ";
	for (int i = 0; i < 6; i++)
	{
		cout << Array[i] << "\t";
	}
}""",
    "Even_Odd": """#include <iostream>
using namespace std;
int main()
{
    int n;
    cout << "Enter an integer: ";
    cin >> n;
    if ( n % 2 == 0)
        cout << n << " is even.";
    else
        cout << n << " is odd.";
    return 0;
}""",
    "Factorial": """#include<iostream>
unsigned int factorial(unsigned int n) {
    if (n == 0)
        return 1;
    return n * factorial(n - 1);
}
int main() {
    int num = 5;
    std::cout << "Factorial of " << num << " is " << factorial(num)
              << std::endl;
    return 0;
}""",
    "Fibonacci": """#include <iostream>
#include <cstdio>
using namespace std;
const long long MAX = 93; //Using integers only, so max numbers is 93
long long f[MAX] = {0};
long long fib(long long n)
{
    if (n == 0)
        return 0;
    if (n == 1 || n == 2)
        return (f[n] = 1);
    if (f[n])
        return f[n];
    long long k = (n % 2 != 0) ? (n + 1) / 2 : n / 2;
    f[n] = (n % 2 != 0) ? (fib(k) * fib(k) + fib(k - 1) * fib(k - 1))
                        : (2 * fib(k - 1) + fib(k)) * fib(k);
    return f[n];
}

int main()
{
    for (long long i = 1; i < 93; i++)
    {
        cout << i << " th fibonacci number is " << fib(i) << "\n";
    }
    return 0;
}""",
    "Greatest_Common_Divisor": """#include <cmath>
#include <iostream>
#include <stdexcept>

int gcd(int num1, int num2) {
    if (num1 <= 0 | num2 <= 0) {
        throw std::domain_error("Euclidean algorithm domain is for ints > 0");
    }

    if (num1 == num2) {
        return num1;
    }

    int base_num = 0;
    int previous_remainder = 1;

    if (num1 > num2) {
        base_num = num1;
        previous_remainder = num2;
    } else {
        base_num = num2;
        previous_remainder = num1;
    }

    while ((base_num % previous_remainder) != 0) {
        int old_base = base_num;
        base_num = previous_remainder;
        previous_remainder = old_base % previous_remainder;
    }

    return previous_remainder;
}

int main() {
    std::cout << "gcd of 120,7 is " << (gcd(120, 7)) << std::endl;
    try {
        std::cout << "gcd of -120,10 is " << gcd(-120, 10) << std::endl;
    } catch (const std::domain_error &e) {
        std::cout << "Error handling was successful" << std::endl;
    }
    std::cout << "gcd of 312,221 is " << (gcd(312, 221)) << std::endl;
    std::cout << "gcd of 289,204 is " << (gcd(289, 204)) << std::endl;

    return 0;
}""",
    "Lowest_Common_Multiple": """#include <cmath>
#include <iostream>
#include <stdexcept>

// will find the greatest common denominator of two ints integers
// Euclidean algorithm can be found here
// https://en.wikipedia.org/wiki/Euclidean_algorithm
int gcd(int num1, int num2) {
    if (num1 <= 0 | num2 <= 0) {
        throw std::domain_error("Euclidean algorithm domain is for ints > 0");
    }

    if (num1 == num2) {
        return num1;
    }

    int base_num = 0;
    int previous_remainder = 1;

    if (num1 > num2) {
        base_num = num1;
        previous_remainder = num2;
    } else {
        base_num = num2;
        previous_remainder = num1;
    }

    while ((base_num % previous_remainder) != 0) {
        int old_base = base_num;
        base_num = previous_remainder;
        previous_remainder = old_base % previous_remainder;
    }

    return previous_remainder;
}

int main() {
    std::cout << "lcm of 120,7 is " << (120*7/gcd(120, 7)) << std::endl;
    try {
        std::cout << "lcm of -120,10 is " << (120*10/gcd(-120, 10)) << std::endl;
    } catch (const std::domain_error &e) {
        std::cout << "Error handling was successful" << std::endl;
    }
    std::cout << "gcd of 312,221 is " << (312*221/gcd(312, 221)) << std::endl;
    std::cout << "gcd of 289,204 is " << (289*204/gcd(289, 204)) << std::endl;

    return 0;
}""",
    "Max_Pairwise_Product": """#include <iostream>
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
}""",
    "Prime_Numbers": """#include <iostream>
#include <vector>

std::vector<int> primes(int max) {
    max++;
    std::vector<int> res;
    std::vector<bool> numbers(max, false);
    for (int i = 2; i < max; i++) {
        if (!numbers[i]) {
            for (int j = i; j < max; j += i)
                numbers[j] = true;
            res.push_back(i);
        }
    }
    return res;
}

int main() {
    std::cout << "Calculate primes up to:\n>> ";
    int n;
    std::cin >> n;
    std::vector<int> ans = primes(n);
    for (int i = 0; i < ans.size(); i++)
        std::cout << ans[i] << ' ';
    std::cout << std::endl;
}""",
    "Swap_Numbers": """#include <iostream> 
using namespace std; 

int main() 
{ 
	int x = 0, y = 0; 
	cout<<"Enter the value of first number (x) : ";
    cin>>x;
    cout<<"Enter the value of second number (y) : ";
    cin>>y;
    
	x = x + y;
	y = x - y;
	x = x - y;
	cout << "After Swapping: x =" << x << ", y=" << y; 
} 
""",
    "AVL_Tree": """#include<iostream>
#include<cstdio>
#include<sstream>
#include<algorithm>
#define pow2(n) (1 << (n))
using namespace std;
struct avl {
   int d;
   struct avl *l;
   struct avl *r;
}*r;
class avl_tree {
   public:
      int height(avl *);
      int difference(avl *);
      avl *rr_rotat(avl *);
      avl *ll_rotat(avl *);
      avl *lr_rotat(avl*);
      avl *rl_rotat(avl *);
      avl * balance(avl *);
      avl * insert(avl*, int);
      void show(avl*, int);
      void inorder(avl *);
      void preorder(avl *);
      void postorder(avl*);
      avl_tree() {
         r = NULL;
      }
};
int avl_tree::height(avl *t) {
   int h = 0;
   if (t != NULL) {
      int l_height = height(t->l);
      int r_height = height(t->r);
      int max_height = max(l_height, r_height);
      h = max_height + 1;
   }
   return h;
}
int avl_tree::difference(avl *t) {
   int l_height = height(t->l);
   int r_height = height(t->r);
   int b_factor = l_height - r_height;
   return b_factor;
}
avl *avl_tree::rr_rotat(avl *parent) {
   avl *t;
   t = parent->r;
   parent->r = t->l;
   t->l = parent;
   cout<<"Right-Right Rotation";
   return t;
}
avl *avl_tree::ll_rotat(avl *parent) {
   avl *t;
   t = parent->l;
   parent->l = t->r;
   t->r = parent;
   cout<<"Left-Left Rotation";
   return t;
}
avl *avl_tree::lr_rotat(avl *parent) {
   avl *t;
   t = parent->l;
   parent->l = rr_rotat(t);
   cout<<"Left-Right Rotation";
   return ll_rotat(parent);
}
avl *avl_tree::rl_rotat(avl *parent) {
   avl *t;
   t = parent->r;
   parent->r = ll_rotat(t);
   cout<<"Right-Left Rotation";
   return rr_rotat(parent);
}
avl *avl_tree::balance(avl *t) {
   int bal_factor = difference(t);
   if (bal_factor > 1) {
      if (difference(t->l) > 0)
         t = ll_rotat(t);
      else
         t = lr_rotat(t);
   } else if (bal_factor < -1) {
      if (difference(t->r) > 0)
         t = rl_rotat(t);
      else
         t = rr_rotat(t);
   }
   return t;
}
avl *avl_tree::insert(avl *r, int v) {
   if (r == NULL) {
      r = new avl;
      r->d = v;
      r->l = NULL;
      r->r = NULL;
      return r;
   } else if (v< r->d) {
      r->l = insert(r->l, v);
      r = balance(r);
   } else if (v >= r->d) {
      r->r = insert(r->r, v);
      r = balance(r);
   } return r;
}
void avl_tree::show(avl *p, int l) {
   int i;
   if (p != NULL) {
      show(p->r, l+ 1);
      cout<<" ";
      if (p == r)
         cout << "Root -> ";
      for (i = 0; i < l&& p != r; i++)
         cout << " ";
         cout << p->d;
         show(p->l, l + 1);
   }
}
void avl_tree::inorder(avl *t) {
   if (t == NULL)
      return;
      inorder(t->l);
      cout << t->d << " ";
      inorder(t->r);
}
void avl_tree::preorder(avl *t) {
   if (t == NULL)
      return;
      cout << t->d << " ";
      preorder(t->l);
      preorder(t->r);
}
void avl_tree::postorder(avl *t) {
   if (t == NULL)
      return;
      postorder(t ->l);
      postorder(t ->r);
      cout << t->d << " ";
}
int main() {
   int c, i;
   avl_tree avl;
   r = avl.insert(r, 23);
   r = avl.insert(r, 45);
   r = avl.insert(r, 48);
   r = avl.insert(r, 91);
   r = avl.insert(r, 20);
   cout << "Balanced AVL Tree:" << endl;
   avl.show(r, 1);
   cout<<endl;
   cout << "Inorder Traversal:" << endl;
   avl.inorder(r);
   cout << endl;
   cout << "Preorder Traversal:" << endl;
   avl.preorder(r);
   cout << endl;
   cout << "Postorder Traversal:" << endl;
   avl.postorder(r);
   cout << endl;
//   while (1) {
//      cout << "1.Insert Element into the tree" << endl;
//      cout << "2.show Balanced AVL Tree" << endl;
//      cout << "3.InOrder traversal" << endl;
//      cout << "4.PreOrder traversal" << endl;
//      cout << "5.PostOrder traversal" << endl;
//      cout << "6.Exit" << endl;
//      cout << "Enter your Choice: ";
//      cin >> c;
//      switch (c) {
//         case 1:
//            cout << "Enter value to be inserted: ";
//            cin >> i;
//            r = avl.insert(r, i);
//         break;
//         case 2:
//            if (r == NULL) {
//               cout << "Tree is Empty" << endl;
//               continue;
//            }
//            cout << "Balanced AVL Tree:" << endl;
//            avl.show(r, 1);
//            cout<<endl;
//         break;
//         case 3:
//            cout << "Inorder Traversal:" << endl;
//            avl.inorder(r);
//            cout << endl;
//         break;
//         case 4:
//            cout << "Preorder Traversal:" << endl;
//            avl.preorder(r);
//            cout << endl;
//         break;
//         case 5:
//            cout << "Postorder Traversal:" << endl;
//            avl.postorder(r);
//            cout << endl;
//         break;
//         case 6:
//            exit(1);
//         break;
//         default:
//            cout << "Wrong Choice" << endl;
//      }
//   }
   return 0;
}""",
    "Array_Methods": """#include<iostream>
using namespace std;
int a;
void insert(int arr[])
{
	cout << "Enter the number of elements: \n";
	cin >> a;
	cout << "Enter the elements: \n";
	for(int i=0;i<a;i++)
	{
		cin>>arr[i];
	}
	cout << "The entered array : ";
	for(int i=0;i<a;i++)
	{  
		cout<<arr[i]<<" ";
	}
	cout << "\n";
	
}
void del(int arr[])
{
    cout << "Enter the number of elements you want to delete: \n";
    int b;
    cin>>b;
    a=a-b;
}
void sort(int arr[])
{
	for(int i=0;i<a-1;i++)
	{  
		for(int j=0;j<a-i-1;j++)
		{
			if(arr[j]>arr[j+1])
			{
			  swap(arr[j],arr[j+1]);
			}		
		}
	}
}
void search(int arr[])
{
	cout << "Enter the index of element that you want to search: \n";
	int c=0;
	cin >> c;
    cout<<arr[c];
}
int main()
{
	int arr[100];
	insert(arr);
	del(arr);
	cout << "The array after deletion: ";
	for(int i=0;i<a;i++)
	{  
		cout<<arr[i]<<" ";
	}
	cout << "\n";
	sort(arr);
	cout<<"The sorted array: ";
	for(int i=0;i<a;i++)
	{  
		cout<<arr[i]<<" ";
	}
	cout << "\n";
	search(arr);
}""",
    "Binary_Search_Tree": """#include <bits/stdc++.h> 
using namespace std; 

struct Node { 
	int key; 
	struct Node *left, *right; 
}; 

Node* newNode(int item) 
{ 
	Node* temp = new Node; 
	temp->key = item; 
	temp->left = temp->right = NULL; 
	return temp; 
} 

void preorder(Node* root) 
{ 
	if (root != NULL) { 
		printf("%d ", root->key); 
		preorder(root->left); 
		preorder(root->right); 
	} 
} 

void inorder(Node* root) 
{ 
	if (root != NULL) { 
		inorder(root->left); 
		printf("%d ", root->key); 
		inorder(root->right); 
	} 
} 

void postorder(Node* root) 
{ 
	if (root != NULL) { 
		postorder(root->left); 
		postorder(root->right); 
		printf("%d ", root->key); 
	} 
} 

Node* insert(Node* node, int key) 
{ 
	if (node == NULL) 
		return newNode(key); 

	if (key < node->key) 
		node->left = insert(node->left, key); 
	else
		node->right = insert(node->right, key); 

	return node; 
} 

Node* deleteNode(Node* root, int k) 
{ 

	if (root == NULL) 
		return root; 

	if (root->key > k) { 
		root->left = deleteNode(root->left, k); 
		return root; 
	} 
	else if (root->key < k) { 
		root->right = deleteNode(root->right, k); 
		return root; 
	} 

	if (root->left == NULL) { 
		Node* temp = root->right; 
		delete root; 
		return temp; 
	} 
	else if (root->right == NULL) { 
		Node* temp = root->left; 
		delete root; 
		return temp; 
	} 

	else { 

		Node* succParent = root; 

		Node *succ = root->right; 
		while (succ->left != NULL) { 
			succParent = succ; 
			succ = succ->left; 
		} 

		if (succParent != root) 
			succParent->left = succ->right; 
		else
			succParent->right = succ->right; 

		root->key = succ->key; 

		delete succ;		 
		return root; 
	} 
} 
 
int main() 
{ 
	Node* root = NULL; 
	printf("Inserting values in the tree\n");
	root = insert(root, 53); 
	root = insert(root, 40); 
	root = insert(root, 20); 
	root = insert(root, 66); 
	root = insert(root, 60); 
	root = insert(root, 58); 
	root = insert(root, 82); 
	root = insert(root, 80); 
	root = insert(root, 86);
	root = insert(root, 84);  
	
	printf("Preorder traversal of the given tree \n"); 
	preorder(root); 
	
	printf("\nInorder traversal of the given tree \n"); 
	inorder(root); 

	printf("\nPostorder traversal of the given tree \n"); 
	postorder(root); 

	printf("\nDelete 20\n"); 
	root = deleteNode(root, 20); 
	printf("Inorder traversal of the modified tree \n"); 
	inorder(root); 

	printf("\nDelete 66\n"); 
	root = deleteNode(root, 66); 
	printf("Inorder traversal of the modified tree \n"); 
	preorder(root); 

	printf("\nDelete 58\n"); 
	root = deleteNode(root, 58); 
	printf("Inorder traversal of the modified tree \n"); 
	inorder(root); 

	return 0; 
} """,
    "Huffman_Tree": """#include <stdio.h> 
#include <stdlib.h> 
#define MAX_TREE_HT 100 

struct MinHeapNode { 

	char data; 
	unsigned freq; 
	struct MinHeapNode *left, *right; 
}; 

struct MinHeap { 
	unsigned size; 
	unsigned capacity; 
	struct MinHeapNode** array; 
}; 

struct MinHeapNode* newNode(char data, unsigned freq) 
{ 
	struct MinHeapNode* temp 
		= (struct MinHeapNode*)malloc
(sizeof(struct MinHeapNode)); 

	temp->left = temp->right = NULL; 
	temp->data = data; 
	temp->freq = freq; 

	return temp; 
} 
struct MinHeap* createMinHeap(unsigned capacity) 

{ 

	struct MinHeap* minHeap 
		= (struct MinHeap*)malloc(sizeof(struct MinHeap)); 

	minHeap->size = 0; 
	minHeap->capacity = capacity; 
	minHeap->array 
		= (struct MinHeapNode**)malloc(minHeap-> 
capacity * sizeof(struct MinHeapNode*)); 
	return minHeap; 
} 

void swapMinHeapNode(struct MinHeapNode** a, 
					struct MinHeapNode** b) 

{ 

	struct MinHeapNode* t = *a; 
	*a = *b; 
	*b = t; 
} 
 
void minHeapify(struct MinHeap* minHeap, int idx) 

{ 

	int smallest = idx; 
	int left = 2 * idx + 1; 
	int right = 2 * idx + 2; 

	if (left < minHeap->size && minHeap->array[left]-> 
freq < minHeap->array[smallest]->freq) 
		smallest = left; 

	if (right < minHeap->size && minHeap->array[right]-> 
freq < minHeap->array[smallest]->freq) 
		smallest = right; 

	if (smallest != idx) { 
		swapMinHeapNode(&minHeap->array[smallest], 
						&minHeap->array[idx]); 
		minHeapify(minHeap, smallest); 
	} 
} 

int isSizeOne(struct MinHeap* minHeap) 
{ 

	return (minHeap->size == 1); 
} 
struct MinHeapNode* extractMin(struct MinHeap* minHeap) 

{ 

	struct MinHeapNode* temp = minHeap->array[0]; 
	minHeap->array[0] 
		= minHeap->array[minHeap->size - 1]; 

	--minHeap->size; 
	minHeapify(minHeap, 0); 

	return temp; 
} 
void insertMinHeap(struct MinHeap* minHeap, 
				struct MinHeapNode* minHeapNode) 

{ 

	++minHeap->size; 
	int i = minHeap->size - 1; 

	while (i && minHeapNode->freq < minHeap->array[(i - 1) / 2]->freq) { 

		minHeap->array[i] = minHeap->array[(i - 1) / 2]; 
		i = (i - 1) / 2; 
	} 

	minHeap->array[i] = minHeapNode; 
} 
void buildMinHeap(struct MinHeap* minHeap) 

{ 

	int n = minHeap->size - 1; 
	int i; 

	for (i = (n - 1) / 2; i >= 0; --i) 
		minHeapify(minHeap, i); 
} 

void printArr(int arr[], int n) 
{ 
	int i; 
	for (i = 0; i < n; ++i) 
		printf("%d", arr[i]); 

	printf("\n"); 
} 

int isLeaf(struct MinHeapNode* root) 

{ 

	return !(root->left) && !(root->right); 
} 
struct MinHeap* createAndBuildMinHeap(char data[], int freq[], int size) 

{ 

	struct MinHeap* minHeap = createMinHeap(size); 

	for (int i = 0; i < size; ++i) 
		minHeap->array[i] = newNode(data[i], freq[i]); 

	minHeap->size = size; 
	buildMinHeap(minHeap); 

	return minHeap; 
} 
 
struct MinHeapNode* buildHuffmanTree(char data[], int freq[], int size) 

{ 
	struct MinHeapNode *left, *right, *top; 
	struct MinHeap* minHeap = createAndBuildMinHeap(data, freq, size); 
	while (!isSizeOne(minHeap)) { 

		left = extractMin(minHeap); 
		right = extractMin(minHeap); 
		top = newNode('#', left->freq + right->freq); 

		top->left = left; 
		top->right = right; 

		insertMinHeap(minHeap, top); 
	} 
 
	return extractMin(minHeap); 
} 

void printCodes(struct MinHeapNode* root, int arr[], int top) 

{ 

	if (root->left) { 

		arr[top] = 0; 
		printCodes(root->left, arr, top + 1); 
	} 
	if (root->right) { 

		arr[top] = 1; 
		printCodes(root->right, arr, top + 1); 
	} 

	if (isLeaf(root)) { 

		printf("%c: ", root->data); 
		printArr(arr, top); 
	} 
} 

void HuffmanCodes(char data[], int freq[], int size) 

{ 

	struct MinHeapNode* root 
		= buildHuffmanTree(data, freq, size); 

	int arr[MAX_TREE_HT], top = 0; 

	printCodes(root, arr, top); 
} 

int main() 
{ 

	char arr[] = { 'm','s','i','l','h','b','f' }; 
	int freq[] = { 15,15,10,5,3,2,1 }; 
	int size = sizeof(arr) / sizeof(arr[0]); 
	HuffmanCodes(arr, freq, size); 

	return 0; 
} """,
    "Infix_to_Postfix": """#include<bits/stdc++.h> 
using namespace std; 
int prec(char c) 
{ 
	if(c == '^') 
	return 3; 
	else if(c == '*' || c == '/') 
	return 2; 
	else if(c == '+' || c == '-') 
	return 1; 
	else
	return -1; 
} 

void infixToPostfix(string s) 
{ 
	std::stack<char> st; 
	st.push('N'); 
	int l = s.length(); 
	string ns; 
	for(int i = 0; i < l; i++) 
	{ 
		if((s[i] >= 'a' && s[i] <= 'z')||(s[i] >= 'A' && s[i] <= 'Z')) 
		ns+=s[i]; 
		else if(s[i] == '(') 
		st.push('(');
		else if(s[i] == ')') 
		{ 
			while(st.top() != 'N' && st.top() != '(') 
			{ 
				char c = st.top(); 
				st.pop(); 
			ns += c; 
			} 
			if(st.top() == '(') 
			{ 
				char c = st.top(); 
				st.pop(); 
			} 
		} 
 
		else{ 
			while(st.top() != 'N' && prec(s[i]) <= prec(st.top())) 
			{ 
				char c = st.top(); 
				st.pop(); 
				ns += c; 
			} 
			st.push(s[i]); 
		} 

	} 

	while(st.top() != 'N') 
	{ 
		char c = st.top(); 
		st.pop(); 
		ns += c; 
	} 
	
	cout << ns << endl; 

} 

int main() 
{ 
	string s = "A+B*(C^D-E)^(F+G*H)-I/J"; 
	infixToPostfix(s); 
	return 0; 
}""",
    "Infix_to_Prefix": """#include <bits/stdc++.h> 
using namespace std; 
bool isOperator(char c) 
{ 
	return (!isalpha(c) && !isdigit(c)); 
} 

int getPriority(char C) 
{ 
	if (C == '-' || C == '+') 
		return 1; 
	else if (C == '*' || C == '/') 
		return 2; 
	else if (C == '^') 
		return 3; 
	return 0; 
} 

string infixToPrefix(string infix) 
{ 

	stack<char> operators; 

	stack<string> operands; 

	for (int i = 0; i < infix.length(); i++) { 

		if (infix[i] == '(') { 
			operators.push(infix[i]); 
		} 

		else if (infix[i] == ')') { 
			while (!operators.empty() && 
				operators.top() != '(') { 

				string op1 = operands.top(); 
				operands.pop(); 

				string op2 = operands.top(); 
				operands.pop(); 

				char op = operators.top(); 
				operators.pop(); 

				string tmp = op + op2 + op1; 
				operands.push(tmp); 
			} 

			operators.pop(); 
		} 

		else if (!isOperator(infix[i])) { 
			operands.push(string(1, infix[i])); 
		} 

		else { 
			while (!operators.empty() && 
				getPriority(infix[i]) <= 
					getPriority(operators.top())) { 

				string op1 = operands.top(); 
				operands.pop(); 

				string op2 = operands.top(); 
				operands.pop(); 

				char op = operators.top(); 
				operators.pop(); 

				string tmp = op + op2 + op1; 
				operands.push(tmp); 
			} 

			operators.push(infix[i]); 
		} 
	} 

	while (!operators.empty()) { 
		string op1 = operands.top(); 
		operands.pop(); 

		string op2 = operands.top(); 
		operands.pop(); 

		char op = operators.top(); 
		operators.pop(); 

		string tmp = op + op2 + op1; 
		operands.push(tmp); 
	} 

	return operands.top(); 
} 

int main() 
{ 
	string s = "(A-B/C)*(A/K-L)/(D-E/F+A)"; 
	cout << infixToPrefix(s); 
	return 0; 
} """,
    "Intersect_Arrays": """#include<iostream>
using namespace std;

void inter(int arr[],int arr1[],int a, int b)
{
	cout<<"The Intersection of the two array is : ";
			for(int i=0;i<b;i++)
	{
int b=0;
			for(int j=0;j<a;j++)
	{
		   if (arr1[i]==arr[j]) b=1;
		
	}
	
	if (b==1)  cout<<arr1[i]<<" ";	
	}
}

int main()
{
	int arr[100]={};
	int arr1[100]={};
	cout<<"Enter the number of elements of the first Array."<<"\n";
	int a,b;
	cin>>a;
		cout<<"Enter the number of elements of the second Array."<<"\n";
		cin>>b;
	cout<<"Enter the elements of the first array";
	for(int i=0;i<a;i++)
	{
	
		cin>>arr[i];
		
	}
	cout<<"Enter the elements of the second array";
		for(int i=0;i<b;i++)
	{	
		cin>>arr1[i];
		
	}
    inter(arr,arr1,a,b);

}""",
    "Postfix_to_Infix": """#include <bits/stdc++.h> 
using namespace std; 
bool isOperand(char x) 
{ 
return (x >= 'a' && x <= 'z') || 
		(x >= 'A' && x <= 'Z'); 
} 

string getInfix(string exp) 
{ 
	stack<string> s; 

	for (int i=0; exp[i]!='\0'; i++) 
	{ 
		if (isOperand(exp[i])) 
		{ 
		string op(1, exp[i]); 
		s.push(op); 
		} 

		else
		{ 
			string op1 = s.top(); 
			s.pop(); 
			string op2 = s.top(); 
			s.pop(); 
			s.push("(" + op2 + exp[i] + 
				op1 + ")"); 
		} 
	} 
	return s.top(); 
} 

int main() 
{ 
	string exp = "AB*C+DF/-"; 
	cout << getInfix(exp); 
	return 0; 
} """,
    "Prefix_to_Infix": """#include <iostream> 
#include <stack> 
using namespace std; 

bool isOperator(char x) { 
switch (x) { 
case '+': 
case '-': 
case '/': 
case '*': 
	return true; 
} 
return false; 
} 

string preToInfix(string pre_exp) { 
stack<string> s; 

int length = pre_exp.size(); 

for (int i = length - 1; i >= 0; i--) { 
	if (isOperator(pre_exp[i])) { 

	string op1 = s.top(); s.pop(); 
	string op2 = s.top(); s.pop(); 

	string temp = "(" + op1 + pre_exp[i] + op2 + ")"; 
	s.push(temp); 
	} 
	else {  
	s.push(string(1, pre_exp[i])); 
	} 
} 

return s.top(); 
} 

int main() { 
string pre_exp = "*-A/BC-/AKL"; 
cout << "Infix : " << preToInfix(pre_exp); 
return 0; 
} 
""",
    "Priority_Queue": """#include <iostream>
#include <string>
#include <queue>
using namespace std;
class CompareClass {
    public:
        bool operator() (int a, int b) {
            if (a > b)
                return true;
            return false;
        }
};

void print_pqueue (priority_queue<int, vector<int>, CompareClass> pq) {

    priority_queue<int, vector<int>, CompareClass> copy_q = pq;
    cout << "Priority Queue : ";
    while (!copy_q.empty()) {
        cout << copy_q.top() << " ";
        copy_q.pop();
    }
    cout << "\n";
}

int main() {

    priority_queue<int, vector<int>, CompareClass> queue_int;

    cout << "Is the Queue empty now? : " << (queue_int.empty() ? "Yes" : "No") << endl;

    cout << "Adding some elements...\n";
    queue_int.push(100);
    queue_int.push(200);
    queue_int.push(400);
    queue_int.push(50);

    cout << "Number of elements : " << queue_int.size() << endl;
    cout << "Top element : " << queue_int.top() << endl << endl;

    print_pqueue(queue_int);

    cout << "Popping element from the top...\n\n";
    queue_int.pop();
    print_pqueue(queue_int);
    
    return 0;
}""",
    "Queue_using_Array": """#include <iostream>
using namespace std;
int queue[100], n = 100, front = - 1, rear = - 1;
void Insert() {
   int val;
   if (rear == n - 1)
      cout<<"Queue Overflow"<<endl;
   else {
      if (front == - 1)
      front = 0;
      cout<<"Insert the element in queue : "<<endl;
      cin>>val;
      rear++;
      queue[rear] = val;
   }
}
void Delete() {
   if (front == - 1 || front > rear) {
      cout<<"Queue Underflow ";
   return ;
   } else {
      cout<<"Element deleted from queue is : "<< queue[front] <<endl;
      front++;;
   }
}
void Display() {
   if (front == - 1)
   cout<<"Queue is empty"<<endl;
   else {
      cout<<"Queue elements are : ";
      for (int i = front; i <= rear; i++)
         cout<<queue[i]<<" ";
      cout<<endl;
   }
}
int main() {
   int ch;
   cout<<"1) Insert element to queue"<<endl;
   cout<<"2) Delete element from queue"<<endl;
   cout<<"3) Display all the elements of queue"<<endl;
   cout<<"4) Exit"<<endl;
do {
   cout<<"Enter your choice : "<<endl;
   cin>>ch;
   switch (ch) {
      case 1: Insert();
         break;
      case 2: Delete();
         break;
      case 3: Display();
         break;
      case 4: cout<<"Exit"<<endl;
         break;
      default: cout<<"Invalid choice"<<endl;
   }
} while(ch!=4);
   return 0;
}""",
    "Queue_using_Linked_List": """#include <bits/stdc++.h> 
using namespace std; 

struct QNode { 
	int data; 
	QNode* next; 
	QNode(int d) 
	{ 
		data = d; 
		next = NULL; 
	} 
}; 

struct Queue { 
	QNode *front, *rear; 
	Queue() 
	{ 
		front = rear = NULL; 
	} 

	void enQueue(int x) 
	{ 

		QNode* temp = new QNode(x); 
 
		if (rear == NULL) { 
			front = rear = temp; 
			return; 
		} 
		rear->next = temp; 
		rear = temp; 
	} 
	void deQueue() 
	{ 
		if (front == NULL) 
			return; 
		QNode* temp = front; 
		front = front->next; 
		if (front == NULL) 
			rear = NULL; 

		delete (temp); 
	} 
	void display()
	{   
	   QNode* temp = front;
		while(temp!=NULL)
		{
			cout << temp->data <<" ";
			temp = temp->next;
		}
		cout << "\n";
	}
}; 

int main() 
{ 

	Queue q; 
	q.enQueue(10);
	q.enQueue(20); 
	q.deQueue(); 
	q.enQueue(40); 
	q.enQueue(50); 
	q.enQueue(70);
	q.deQueue();
	q.enQueue(30);
	q.display();
	cout << "Queue Front : " << (q.front)->data << endl; 
	cout << "Queue Rear : " << (q.rear)->data; 
} """,
    "Queue_using_Stacks": """#include <bits/stdc++.h> 
using namespace std; 

struct Queue { 
	stack<int> s1, s2; 

	void enQueue(int x) 
	{ 
		while (!s1.empty()) { 
			s2.push(s1.top()); 
			s1.pop(); 
		} 

		s1.push(x); 
		while (!s2.empty()) { 
			s1.push(s2.top()); 
			s2.pop(); 
		} 
	} 
	int deQueue() 
	{ 
		if (s1.empty()) { 
			cout << "Q is Empty"; 
			exit(0); 
		} 
		int x = s1.top(); 
		s1.pop(); 
		return x; 
	} 
}; 

int main() 
{ 
	Queue q; 
	q.enQueue(3); 
	q.enQueue(5); 
	q.enQueue(7); 
	cout << q.deQueue() << '\n'; 
	q.enQueue(9); 
	cout << q.deQueue() << '\n'; 
	cout << q.deQueue() << '\n'; 
	cout << q.deQueue() << '\n'; 

	return 0; 
} """,
    "Reverse_Linked_List": """#include <iostream> 
using namespace std; 

struct Node { 
	int data; 
	struct Node* next; 
	Node(int data) 
	{ 
		this->data = data; 
		next = NULL; 
	} 
}; 

struct LinkedList { 
	Node* head; 
	LinkedList() 
	{ 
		head = NULL; 
	} 

	void reverse() 
	{ 
		
		Node* current = head; 
		Node *prev = NULL, *next = NULL; 

		while (current != NULL) { 
	
			next = current->next; 

			current->next = prev; 

			prev = current; 
			current = next; 
		} 
		head = prev; 
	} 
	
	void add()
	{
		Node* current = head;
		Node *prev = NULL, *next = NULL; 
		current->data=current->data+1;
		int b=1;
		
		while (current != NULL){
			if (b==0)
			{
				current->data=current->data+1;
				b=1;
			}
			if (current->data==10)
			{
				current->data=0;
				b=0;
			
			}
			current = current->next;  
			
		}

		
	}

	void print() 
	{ 
		struct Node* temp = head; 
		while (temp != NULL) { 
			cout << temp->data << " "; 
			temp = temp->next; 
		} 
	} 

	void push(int data) 
	{ 
		Node* temp = new Node(data); 
		temp->next = head; 
		head = temp; 
	} 
}; 


int main() 
{ 

	LinkedList ll; 
	ll.push(9); 
	ll.push(9); 
	ll.push(0); 
	ll.push(2); 

	cout << "Given linked list\n"; 
	ll.print(); 
	cout <<"\nAfter Adding 1\n";
	ll.reverse(); 
	ll.add();
	ll.reverse(); 
	ll.print(); 
	return 0; 
} """,
    "Stack_using_Array": """#include <iostream>
using namespace std;

int stack[100], n=100, top=-1;

void push(int val)
{
	if(top>=n-1)
		cout<<"Stack Overflow"<<"\n";
	else {
		top++;
		stack[top]=val;
	}
}

void pop(){
	if(top<=-1)
		cout<<"Stack Underflow"<<"\n";
	else{
		cout<<"The element popped is : "<<stack[top]<<"\n";
		top--;
	}
}

void display(){
	if(top>=0){
		cout<<"Stack elements are : ";
		for(int i=top;i>=0;i--)
		{
			cout<<stack[i]<<" ";
		}
		cout<<"\n";
	}
	else cout<<"Stack is empty";
}

int main(){
	int ch, val;
	cout<<"1) Push in Stack"<<"\n";
	cout<<"2) Pop from Stack"<<"\n";
	cout<<"3) Display Stack"<<"\n";
	cout<<"4) Exit"<<"\n";
	do{
		cout<<"Enter choice : "<<"\n";
		cin>>ch;
		switch(ch){
			case 1:{
				cout<<"Enter value to be pushed : "<<"\n";
				cin>>val;
				push(val);
				break;
			}
			case 2:{
				pop();
				break;
			}
			case 3:{
				display();
				break;
			}
			case 4:{
				cout<<"Exit"<<endl;
				break;
			}
			default:{
				cout<<"Invalid Choice"<<"\n";
				break;
			}
		}
	}while(ch!=4);
	return 0;
}""",
    "Stack_using_Linked_List": """#include <bits/stdc++.h> 
using namespace std; 

struct Node { 
	int data; 
	struct Node* link; 
}; 
struct Node* top; 
void push(int data) 
{ 
	struct Node* temp; 
	temp = new Node(); 
	if (!temp) { 
		cout << "\nHeap Overflow"; 
		exit(1); 
	} 
	temp->data = data; 
	temp->link = top; 
	top = temp; 
} 

int isEmpty() 
{ 
	return top == NULL; 
}  
int peek() 
{ 
	if (!isEmpty()) 
		return top->data; 
	else
		exit(1); 
} 
void pop() 
{ 
	struct Node* temp; 
	if (top == NULL) { 
		cout << "\nStack Underflow" << endl; 
		exit(1); 
	} 
	else { 
		temp = top; 
		top = top->link; 
		temp->link = NULL; 
		free(temp); 
	} 
} 

void display() 
{ 
	struct Node* temp; 
	if (top == NULL) { 
		cout << "\nStack Underflow"; 
		exit(1); 
	} 
	else { 
		temp = top; 
		while (temp != NULL) { 
			cout << temp->data << " "; 
			temp = temp->link; 
		} 
	} 
} 

int main() 
{ 
	push(110); 
	push(2); 
	push(78); 
	push(56); 
	display();  
	cout << "\nTop element is " << peek() <<"\n"; 
	pop(); 
	pop(); 
	display(); 
	cout << "\nTop element is " << peek() <<"\n"; 
	return 0; 
} 
""",
    "Stack_using_Queues": """#include <bits/stdc++.h> 
using namespace std; 

class Stack { 
	queue<int> q1, q2; 

	int curr_size; 

public: 
	Stack() 
	{ 
		curr_size = 0; 
	} 

	void push(int x) 
	{ 
		curr_size++; 
		q2.push(x); 

		while (!q1.empty()) { 
			q2.push(q1.front()); 
			q1.pop(); 
		} 

		queue<int> q = q1; 
		q1 = q2; 
		q2 = q; 
	} 

	void pop() 
	{ 

		if (q1.empty()) 
			return; 
		q1.pop(); 
		curr_size--; 
	} 

	int top() 
	{ 
		if (q1.empty()) 
			return -1; 
		return q1.front(); 
	} 

	int size() 
	{ 
		return curr_size; 
	} 
}; 

int main() 
{ 
	Stack s; 
	s.push(1); 
	s.push(2); 
	s.push(3); 
	cout << "current size: " << s.size() << endl; 
	cout << s.top() << endl; 
	s.pop(); 
	s.push(4);
	cout << "current size: " << s.size() << endl; 
	cout << s.top() << endl; 
	s.pop(); 
	cout << s.top() << endl; 
	cout << "current size: " << s.size() << endl; 
	return 0; 
}""",
    "Union_Array": """#include<iostream>
using namespace std;
void unio (int arr[],int arr1[],int a, int b)
{
	cout<<"The Union of the two array is : ";
		for(int i=0;i<a;i++)
	{
		cout<<arr[i]<<" ";
		
	}
		for(int i=0;i<b;i++)
	{
int b=0;
			for(int j=0;j<a;j++)
	{
		   if (arr1[i]==arr[j]) b=1;
		
	}
	
	if (b==0)  cout<<arr1[i]<<" ";	
	}
}
int main()
{
	int arr[100]={};
	int arr1[100]={};
	cout<<"Enter the number of elements of the first Array."<<"\n";
	int a,b;
	cin>>a;
		cout<<"Enter the number of elements of the second Array."<<"\n";
		cin>>b;
	cout<<"Enter the elements of the first array";
	for(int i=0;i<a;i++)
	{
	
		cin>>arr[i];
		
	}
	cout<<"Enter the elements of the second array";
		for(int i=0;i<b;i++)
	{	
		cin>>arr1[i];
		
	}
	unio(arr,arr1,a,b);


}""",
    "Union_Sorted_Array": """#include<iostream>
using namespace std;
void unio (int arr[],int arr1[],int a, int b)
{
	cout<<"The Union of the two array is : ";
	int d=0;
	
	for(int c=0;c<a;c++)
	{
		if (arr[c]==arr1[0])
		{
		
		for(int i=0;i<b;i++) cout<<arr1[i];
		break;
	    }
	    cout<<arr[c];
	}

	

}
int main()
{
	int arr[100]={};
	int arr1[100]={};
	cout<<"Enter the number of elements of the first Array."<<"\n";
	int a,b;
	cin>>a;
		cout<<"Enter the number of elements of the second Array but larger than first array elements "<<"\n";
		cin>>b;
	cout<<"Enter the elements of the first array";
	for(int i=0;i<a;i++)
	{
	
		cin>>arr[i];
		
	}
	cout<<"Enter the elements of the second array";
		for(int i=0;i<b;i++)
	{	
		cin>>arr1[i];
		
	}
	unio(arr,arr1,a,b);


}""",
    "Knapsack_Problem": """#include <iostream>
using namespace std;

struct Item
{
	int weight;
	int profit;
};

float profitPerUnit(Item x)
{
	return (float)x.profit / (float)x.weight;
}

int partition(Item arr[], int low, int high)
{
	Item pivot = arr[high]; // pivot
	int i = (low - 1);		// Index of smaller element

	for (int j = low; j < high; j++)
	{
		// If current element is smaller than or
		// equal to pivot
		if (profitPerUnit(arr[j]) <= profitPerUnit(pivot))
		{
			i++; // increment index of smaller element
			Item temp = arr[i];
			arr[i] = arr[j];
			arr[j] = temp;
		}
	}
	Item temp = arr[i + 1];
	arr[i + 1] = arr[high];
	arr[high] = temp;
	return (i + 1);
}

void quickSort(Item arr[], int low, int high)
{
	if (low < high)
	{

		int p = partition(arr, low, high);

		quickSort(arr, low, p - 1);
		quickSort(arr, p + 1, high);
	}
}

int main()
{
	cout << "\nEnter the capacity of the knapsack : ";
	float capacity;
	cin >> capacity;
	cout << "\n Enter the number of Items : ";
	int n;
	cin >> n;
	Item itemArray[n];
	for (int i = 0; i < n; i++)
	{
		cout << "\nEnter the weight and profit of item " << i + 1 << " : ";
		cin >> itemArray[i].weight;
		cin >> itemArray[i].profit;
	}

	quickSort(itemArray, 0, n - 1);

	// show(itemArray, n);

	float maxProfit = 0;
	int i = n;
	while (capacity > 0 && --i >= 0)
	{
		if (capacity >= itemArray[i].weight)
		{
			maxProfit += itemArray[i].profit;
			capacity -= itemArray[i].weight;
			cout << "\n\t" << itemArray[i].weight << "\t" << itemArray[i].profit;
		}
		else
		{
			maxProfit += profitPerUnit(itemArray[i]) * capacity;
			cout << "\n\t" << capacity << "\t" << profitPerUnit(itemArray[i]) * capacity;
			capacity = 0;
			break;
		}
	}

	cout << "\nMax Profit : " << maxProfit;

	return 0;
}""",
  };
}

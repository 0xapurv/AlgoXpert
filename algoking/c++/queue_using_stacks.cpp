#include <bits/stdc++.h> 
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
} 


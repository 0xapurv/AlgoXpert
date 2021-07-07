#include <iostream> 
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



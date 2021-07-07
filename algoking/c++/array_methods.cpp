#include<iostream>
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
}

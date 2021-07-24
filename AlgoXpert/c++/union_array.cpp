#include<iostream>
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


}

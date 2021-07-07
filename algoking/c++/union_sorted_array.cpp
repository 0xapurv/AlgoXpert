#include<iostream>
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


}

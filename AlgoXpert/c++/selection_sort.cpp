#include <iostream>
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
}

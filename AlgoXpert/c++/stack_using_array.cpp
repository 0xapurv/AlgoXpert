#include <iostream>
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
}

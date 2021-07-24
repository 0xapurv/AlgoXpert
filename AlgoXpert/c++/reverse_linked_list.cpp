#include <iostream> 
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
} 


#include <bits/stdc++.h> 
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
} 


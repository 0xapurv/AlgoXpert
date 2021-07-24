#include<iostream>
using namespace std;
class node
{    
	public:
	int data;
	node* next = NULL;
	node(int n)
	{
	   data = n;
	}	
};
class linkedlist
{
	public:
    node* head;
    linkedlist()
    {
    	head=NULL;
	}
	
    insert(int d) //at the start		
	{
		node* li = new node(d);
		if(head==NULL)	
		{
			head = li;
		}
		else 
	 {
		 	li->next=head;
		    head = li;
     }
	}
	
	del()
	{
		node* temp = head;
		head = head->next;
		delete temp;
	}
	
	dele()
	{
		node* temp = head;
		node* prev;
		while(temp->next != NULL)
		{
			prev = temp;
			temp = temp->next;
		}
		prev->next = NULL;
		delete temp;
	}
	
	delk()
	{
		node* temp = head;
		node* nextnode;
		int pos, i = 1;
		cout << "Enter Position : ";
		cin>>pos;
		while(i<=pos-1)
		{
			temp = temp->next;
			i++;
		}
	}
	
	disp()
	{   
		node* temp=head;
		while(temp!=NULL)
		{
			cout << temp->data;
			temp = temp->next;
		}
	}
	
	reverse() 
	{ 
		
		node* current = head; 
		node *prev = NULL, *next = NULL; 

		while (current != NULL) { 
	
			next = current->next; 

			current->next = prev; 

			prev = current; 
			current = next; 
		} 
		head = prev; 
	} 
	
	
	insertl(int d)  //insert at the end
	{
		node* l1=new node(d);
		if(head==NULL) l1=head;
		else 
		{  
		    node* temp=head;
			while(temp->next != NULL) temp = temp->next;
			temp->next = l1;
		}
	}
	insertm(int d,int a)//insert at the middle
	{	
	  node* l = new node(d);
	 if(head==NULL)
	 {
	 	head=l;
	 }
	 else	
	 {  

	   node* temp = head;
	 	while(temp->data != a)
		 {
		 	temp = temp->next;
	     }
	     if(temp->data==a) 
		 {
		 	node* m = temp->next;
		 	temp->next = l;
		 	l->next = m;
		 }
	 }
	}
};
int main()
{
	linkedlist l;
	int c = 1;
	while (c!=0)
	{	cout << "1. Insert at beginning\n2. Insert at end\n3. Insert after a number\n4. Display\n5. Delete at beginning\n6. Delete at end\n7. Delete at a position\n8. Reverse\n9. Exit\n";
		int i;
		cin >> i;
		switch(i)
		{
			case 1:
			{
				int d;
				cin >> d;
				l.insert(d);
				break;
			}
			case 2:
			{
				int d;
				cin >> d;
				l.insertl(d);
				break;
			}
			case 3:
			{
				int d;
				cin >> d;
				l.insertl(d);
				break;
			}
			case 4:
			{
				l.disp();
				break;
			}
			case 5:
			{
				l.del();
				break;
			}
			case 6:
			{
				l.dele();
				break;
			}
			case 7:
			{
				l.delk();
				break;
			}
			case 8:
			{
				l.reverse();
			}
			case 9:
			{
				c = 0;
				break;
			}
		}
	}
}

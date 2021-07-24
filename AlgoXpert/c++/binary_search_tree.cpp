#include <bits/stdc++.h> 
using namespace std; 

struct Node { 
	int key; 
	struct Node *left, *right; 
}; 

Node* newNode(int item) 
{ 
	Node* temp = new Node; 
	temp->key = item; 
	temp->left = temp->right = NULL; 
	return temp; 
} 

void preorder(Node* root) 
{ 
	if (root != NULL) { 
		printf("%d ", root->key); 
		preorder(root->left); 
		preorder(root->right); 
	} 
} 

void inorder(Node* root) 
{ 
	if (root != NULL) { 
		inorder(root->left); 
		printf("%d ", root->key); 
		inorder(root->right); 
	} 
} 

void postorder(Node* root) 
{ 
	if (root != NULL) { 
		postorder(root->left); 
		postorder(root->right); 
		printf("%d ", root->key); 
	} 
} 

Node* insert(Node* node, int key) 
{ 
	if (node == NULL) 
		return newNode(key); 

	if (key < node->key) 
		node->left = insert(node->left, key); 
	else
		node->right = insert(node->right, key); 

	return node; 
} 

Node* deleteNode(Node* root, int k) 
{ 

	if (root == NULL) 
		return root; 

	if (root->key > k) { 
		root->left = deleteNode(root->left, k); 
		return root; 
	} 
	else if (root->key < k) { 
		root->right = deleteNode(root->right, k); 
		return root; 
	} 

	if (root->left == NULL) { 
		Node* temp = root->right; 
		delete root; 
		return temp; 
	} 
	else if (root->right == NULL) { 
		Node* temp = root->left; 
		delete root; 
		return temp; 
	} 

	else { 

		Node* succParent = root; 

		Node *succ = root->right; 
		while (succ->left != NULL) { 
			succParent = succ; 
			succ = succ->left; 
		} 

		if (succParent != root) 
			succParent->left = succ->right; 
		else
			succParent->right = succ->right; 

		root->key = succ->key; 

		delete succ;		 
		return root; 
	} 
} 
 
int main() 
{ 
	Node* root = NULL; 
	printf("Inserting values in the tree\n");
	root = insert(root, 53); 
	root = insert(root, 40); 
	root = insert(root, 20); 
	root = insert(root, 66); 
	root = insert(root, 60); 
	root = insert(root, 58); 
	root = insert(root, 82); 
	root = insert(root, 80); 
	root = insert(root, 86);
	root = insert(root, 84);  
	
	printf("Preorder traversal of the given tree \n"); 
	preorder(root); 
	
	printf("\nInorder traversal of the given tree \n"); 
	inorder(root); 

	printf("\nPostorder traversal of the given tree \n"); 
	postorder(root); 

	printf("\nDelete 20\n"); 
	root = deleteNode(root, 20); 
	printf("Inorder traversal of the modified tree \n"); 
	inorder(root); 

	printf("\nDelete 66\n"); 
	root = deleteNode(root, 66); 
	printf("Inorder traversal of the modified tree \n"); 
	preorder(root); 

	printf("\nDelete 58\n"); 
	root = deleteNode(root, 58); 
	printf("Inorder traversal of the modified tree \n"); 
	inorder(root); 

	return 0; 
} 


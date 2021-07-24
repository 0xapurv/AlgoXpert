class Node{
  var data;
  var left;
  var right;
  
  Node(var data){
    this.data = data;
    this.left = null;
    this.right = null;
  }  
}
void display(var tree){
  
  if(tree == null){
    return;
  }
  
  if(tree.left != null){
    display(tree.left);
  }
  
  print(tree.data);
  
  if(tree.right != null){
    display(tree.right);
  }
  
  return;
}
double depth_of_tree(var tree){
  
  if(tree == null){
    return 0;
  }
  else{
    var depth_l_tree = depth_of_tree(tree.left);
    var depth_r_tree = depth_of_tree(tree.right);
    
    if(depth_l_tree > depth_r_tree){
      return (1 + depth_l_tree);
    }
    else{
      return (1 + depth_r_tree);
    }
  }
}
bool is_full_binary_tree(var tree){
  if(tree == null){
    return true;
  }
  if(tree.left == null && tree.right == null){
    return true;
  }
  if(tree.left != null && tree.right != null){
    return (is_full_binary_tree(tree.left) && is_full_binary_tree(tree.right));
  }
  else{
    return false;
  }
}
void main(){
  var tree = Node(1);
  tree.left = Node(2);
  tree.right = Node(3);
  tree.left.left = Node(4);
  tree.left.right = Node(5);
  tree.left.right.left = Node(6);
  tree.right.left = Node(7);
  tree.right.left.left = Node(8);
  tree.right.left.left.right = Node(9);
  
  print(is_full_binary_tree(tree));
  print(depth_of_tree(tree));
  print("Tree is:\n");
  display(tree);
}
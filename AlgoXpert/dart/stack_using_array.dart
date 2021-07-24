class ArrayStack<T>{
  List<T> stack;
  int count;
  int n;

  ArrayStack(var n){
    this.n = n;
    this.stack = new List<T>(n);
    this.count = 0;
  }
  void push(T item){
    if(count == n){
      print("The stack is full\n");
    }
    stack[count] = item;
    count++;
  }
  T pop(){
    if(count == 0){
      print("No data in the stack!\n");
    }
    T pop_data = stack[count - 1];
    stack[count - 1] = null;
    count--;
    return pop_data;
  }
  
  void Display(){
    print("ArrayStack: $stack\n");
  }
}

void main(){
  ArrayStack<String> array_stack = new ArrayStack<String>(6);
  
  array_stack.push('1');
  array_stack.push("2");
  array_stack.push('3');
  array_stack.push("4");
  array_stack.push('5');
  array_stack.push("6");
  
  array_stack.Display();
  
  var pop_data;
  pop_data = array_stack.pop();
  print("Pop $pop_data from stack\n");
  pop_data = array_stack.pop();
  print("Pop $pop_data from stack\n");
  print("Now the stock:");
   array_stack.Display();
}
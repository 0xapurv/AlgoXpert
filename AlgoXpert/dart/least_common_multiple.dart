double gcd(var a,var b){
  if(a == 0){
    return b;
  }
  return gcd(b % a,a);
}
double lcm(var a,var b){
  return (a * b) / gcd(a,b);
}

void main(){
  var a,b;
  a = 15;
  b = 20;
  print("LCM of " + a.toString() + " and " + b.toString() + " is " + lcm(a,b).toString());
  a = 12;
  b = 18;
  print("LCM of " + a.toString() + " and " + b.toString() + " is " + lcm(a,b).toString());
}
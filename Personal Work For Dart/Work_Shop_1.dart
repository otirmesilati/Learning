void main() {
  print("Coming soon~");

  // 'var' declares a variable.  dartanalyzer infers the type.
  var a = "initial";
  print(a);

  // The type can also be declared:
  num b = 42;
  print(b);

  // final variables cannot be changed once declared
  final num c = 99;
  print(c);

  // const variables are compile-time constants
  const double d = 44.00;
  print(d);

  // declare an integer
  int num1 = 2;

  // declare a double value
  double num2 = 1.5;

  // print the values
  print(num1);
  print(num2);
  var a1 = num.parse("1");
  var b1 = num.parse("2.34");

  var c1 = a1+b1;
  print("Product = ${c1}");
}

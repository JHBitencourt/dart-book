void main() {
  print(42 == 42 && 42 <= 10); // > false
  print((42 == 42 && 42 <= 10) || 42 != 42); // > false
  print(!(42 == 42 && 42 <= 10) || 42 != 10); // > true
}
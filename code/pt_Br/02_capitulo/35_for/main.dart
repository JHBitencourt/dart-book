void main() {
  for(var i = 0; i <= 10; i = i+2) {
    print(i); // > 0 2 4 6 8 10
  }

  // for com continue e break
  for (var i = 0; i <= 10; i++) {
    if (i % 2 == 0) continue;
    if (i > 7) break;
    print(i); // > 1 3 5 7
  }
}
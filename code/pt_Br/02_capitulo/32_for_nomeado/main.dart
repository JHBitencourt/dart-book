void main() {
  forDeFora:
  for (var i = 0; i <= 2; i++) {
    print('forDeFora $i');
    for (var j = 0; j <= 2; j++) {
      if (j >= 1 || i == 1) continue forDeFora;
      print('forDeDentro $j');
    }
  }
}
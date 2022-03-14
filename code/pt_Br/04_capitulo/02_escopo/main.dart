var escopoGlobal = 'global';

void main() {
  var escopoMain = 'escopoMain';
  a() {
    var escopoDentro = 'escopoA';
    print('a: $escopoGlobal - $escopoMain - $escopoDentro');
    b() {
      var escopoDentro = 'escopoB';
      print('b: $escopoGlobal - $escopoMain - $escopoDentro');
    }
    b();
  }
  c() {
    a();
  }
  c();
  print('main: $escopoGlobal - $escopoMain');
}
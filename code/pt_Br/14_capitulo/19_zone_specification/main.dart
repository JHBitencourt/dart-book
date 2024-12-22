import 'dart:async';

void main() {
  runZoned(() {
    print('Teste log');
    print('42');
  }, zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
    parent.print(zone, '${DateTime.now()} - $line');
  }));
}

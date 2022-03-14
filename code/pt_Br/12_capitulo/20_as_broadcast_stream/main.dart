import 'dart:async';

void main() {
  final controller = StreamController();
  final single = controller.stream;
  final broadcast = single.asBroadcastStream(onListen: (StreamSubscription s) {
    print('Inscrição realizada');
  }, onCancel: (StreamSubscription s) {
    print('Todas inscrições canceladas');
  });

  final subscription = broadcast.listen(null);
  subscription.onData((e) {
    print('Novo elemento em broadcast $e');
    subscription.cancel();
  });

  controller.sink.add('42');
}

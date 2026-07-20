import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'Message.g.dart';

@riverpod
class MessageNotifier extends _$MessageNotifier {
  @override
  Stream<String> build() {
    final controller = StreamController<String>();
    const seconds = Duration(seconds: 1);
    final timer = Timer.periodic(seconds, (timer) {
      controller.add('Message ${timer.tick}');
    });

    const stopAfter = Duration(seconds: 10);
    Future.delayed(stopAfter, () {
      timer.cancel();
      controller.close();
    });
    return controller.stream;
  }

  void updateState() async {
    const sec1 = Duration(milliseconds: 500);

    for (var i = 1; i <= 100; i++) {
      await Future.delayed(sec1);
      state = AsyncValue.data('Message ${i * 100}');
    }
  }
}

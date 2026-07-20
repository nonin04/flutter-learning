import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'CurrencyRate.g.dart';

@riverpod
class CurrencyRateNotifier extends _$CurrencyRateNotifier {
  @override
  Future<int> build() async {
    const sec1 = Duration(seconds: 1);
    await Future.delayed(sec1);

    return 100;
  }

  void updateState() async {
    state = const AsyncValue.loading();
    const sec1 = Duration(seconds: 1);
    await Future.delayed(sec1);

    state = AsyncValue.data(state.value! + 1);
  }
}

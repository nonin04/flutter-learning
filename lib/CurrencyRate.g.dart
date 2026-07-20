// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CurrencyRate.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrencyRateNotifier)
final currencyRateProvider = CurrencyRateNotifierProvider._();

final class CurrencyRateNotifierProvider
    extends $AsyncNotifierProvider<CurrencyRateNotifier, int> {
  CurrencyRateNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyRateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyRateNotifierHash();

  @$internal
  @override
  CurrencyRateNotifier create() => CurrencyRateNotifier();
}

String _$currencyRateNotifierHash() =>
    r'49b9179d1c8b14b8c82088a7edcca7ede9344ca8';

abstract class _$CurrencyRateNotifier extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

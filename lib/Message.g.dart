// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Message.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MessageNotifier)
final messageProvider = MessageNotifierProvider._();

final class MessageNotifierProvider
    extends $StreamNotifierProvider<MessageNotifier, String> {
  MessageNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'messageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$messageNotifierHash();

  @$internal
  @override
  MessageNotifier create() => MessageNotifier();
}

String _$messageNotifierHash() => r'a8edb54a4863586e8d97677a236408c046f0b986';

abstract class _$MessageNotifier extends $StreamNotifier<String> {
  Stream<String> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

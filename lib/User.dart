import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'User.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  List<String> build() {
    return ['miyamoto', 'taiga'];
  }


  void updateUser(String newUser) {
    state = [...state, newUser];
  }
}

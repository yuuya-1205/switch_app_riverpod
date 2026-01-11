import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_app_riverpod/data/repository/switch_repository.dart';
import 'package:switch_app_riverpod/domain/model/switch.dart';

/// SwitchNotifierプロバイダー
final switchNotifierProvider = AsyncNotifierProvider<SwitchNotifier, Switch>(
  () => SwitchNotifier(),
);

/// ドキュメントID
const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

/// SwitchNotifierクラス
///
/// SwitchをOn/Offするためのクラス
class SwitchNotifier extends AsyncNotifier<Switch> {
  @override
  Future<Switch> build() {
    // switchRepositoryProviderからsubscribeSwitchIsEnabledメソッドを呼び出す。
    // その結果をSwitchStateに変換して返す。
    return ref
        .watch(switchRepositoryProvider)
        .getSwitchIsEnabled(documentId: documentId)
        .then((switchDto) => Switch.fromJson(switchDto));
  }

  /// SwitchをOnにする。
  ///
  /// SwitchStateがローディング状態になる。
  /// 3秒後にisEnabled=trueになり、FirebaseのデータをisEnabled: trueに更新する。
  /// ref.invalidateSelfにより、Notifierのbuild関数が再実行され、SwitchStateが更新される。
  Future<void> switchOn() async {
    state = const AsyncValue.loading();

    // switchRepositoryProviderからswitchOnメソッドを呼び出す。
    await ref.read(switchRepositoryProvider).switchOn(documentId: documentId);

    // ref.invalidateSelf()→Provider自身を無効化→buildメソッドが再実行され、最新のデータが取得される。
    ref.invalidateSelf();
  }

  /// SwitchをOffにする。
  ///
  /// FirebaseのデータをisEnabled: falseに更新する。
  /// ref.invalidateSelfにより、Notifierのbuild関数が再実行され、SwitchStateが更新される。
  Future<void> switchOff() async {
    // switchRepositoryProviderからswitchOffメソッドを呼び出す。
    await ref.read(switchRepositoryProvider).switchOff(documentId: documentId);

    // buildメソッドが再実行され、SwitchStateが更新される。
    ref.invalidateSelf();
  }
}

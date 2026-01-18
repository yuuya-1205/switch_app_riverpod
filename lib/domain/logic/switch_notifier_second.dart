import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:switch_app_riverpod/data/repository/firebase_firestore_repository.dart';
import 'package:switch_app_riverpod/domain/model/switch_state.dart';

/// SwitchNotifierプロバイダー
final switchNotifierSecondProvider =
    AsyncNotifierProvider.autoDispose<SwitchNotifierSecond, SwitchState>(
      () => SwitchNotifierSecond(),
    );

/// ドキュメントID
const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

/// SwitchNotifierSecondクラス
///
/// SwitchをOn/Offするためのクラス
class SwitchNotifierSecond extends AutoDisposeAsyncNotifier<SwitchState> {
  @override
  Future<SwitchState> build() async {
    debugPrint('SwitchNotifierSecond: build() が実行された。');

    ref.onCancel(() {
      debugPrint('SwitchNotifierSecond: onCancel された（listener が 0）。');
    });

    ref.onResume(() {
      debugPrint('SwitchNotifierSecond: onResume された（listener が復活）。');
    });

    ref.onDispose(() {
      debugPrint('SwitchNotifierSecond: onDispose された。');
    });

    // Firebaseで
    // Switchコレクションの指定したドキュメントIDにあるデータを取得する。
    final fetchedData = await ref
        .watch(firebaseFirestoreProvider)
        .collection('switch')
        .doc(documentId)
        .get();
    final data = fetchedData.data();

    // jsonからSwitchStateに変換して返す。
    return SwitchState.fromJson(data ?? {});
  }

  /// SwitchをOnにする。
  ///
  /// AsyncValue<SwitchState>がローディング状態になる。
  /// FirebaseのSwitchコレクションの指定したドキュメントIDにあるデータをisEnabled: trueに更新する。
  /// ref.invalidateSelfにより、Notifierのbuild関数が再実行され、SwitchStateが更新される。
  Future<void> switchOn() async {
    state = const AsyncValue.loading();

    await ref
        .read(firebaseFirestoreProvider)
        .collection('switch')
        .doc(documentId)
        .set({'isEnabled': true});

    // ProviderのライフサイクルをUninitializedする
    ref.invalidateSelf();
    // buildメソッドが再実行され、最新のデータが取得される。
  }

  /// SwitchをOffにする。
  ///
  /// FirebaseのデータをisEnabled: falseに更新する。
  /// ref.invalidateSelfにより、Notifierのbuild関数が再実行され、SwitchStateが更新される。
  Future<void> switchOff() async {
    await ref
        .read(firebaseFirestoreProvider)
        .collection('switch')
        .doc(documentId)
        .set({'isEnabled': false});

    // ProviderのライフサイクルをUninitializedする
    ref.invalidateSelf();
    // buildメソッドが再実行され、最新のデータが取得される。
  }
}

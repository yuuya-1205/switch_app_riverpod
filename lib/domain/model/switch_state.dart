import 'package:freezed_annotation/freezed_annotation.dart';
part 'switch_state.freezed.dart';
part 'switch_state.g.dart';

@freezed
/// SwitchStateモデル
///
/// Firebaseから取得したデータを格納するモデル
abstract class SwitchState with _$SwitchState {
  /// ファクトリーコンストラクタ
  const factory SwitchState({required bool isEnabled}) = _SwitchState;

  ///　jsonからSwitchDtoに変換する。
  factory SwitchState.fromJson(Map<String, Object?> json) =>
      _$SwitchStateFromJson(json);
}

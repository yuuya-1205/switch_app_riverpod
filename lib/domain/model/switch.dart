import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:switch_app_riverpod/data/dto/switch_dto.dart';

part 'switch.freezed.dart';
part 'switch.g.dart';

@freezed
/// {@template switch_state}
/// Switchクラス
///
/// [isEnabled] が含まれています。
/// {@endtemplate}
abstract class Switch with _$Switch {
  const factory Switch({required bool isEnabled}) = _Switch;

  factory Switch.fromJson(SwitchDto switchDto) =>
      _$SwitchFromJson(switchDto.toJson());
}

/// なぜ、freezedを用いているのか？
/// freezedを用いることで、シリアライズ・デシリアライズを容易にすることができる。
/// これは、Firebaseのような外部のデータベースとの連携を容易にするためである。
/// freezedではないのではないのでは？
/// 
/// Firebaseのような外部DBを用いるとシリアライズとデシリアライズを自動で行ってくれる。
/// これはしっかり学習するべきだよね。
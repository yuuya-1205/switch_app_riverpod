// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwitchState {

 bool get isEnabled;
/// Create a copy of SwitchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchStateCopyWith<SwitchState> get copyWith => _$SwitchStateCopyWithImpl<SwitchState>(this as SwitchState, _$identity);

  /// Serializes this SwitchState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchState&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isEnabled);

@override
String toString() {
  return 'SwitchState(isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class $SwitchStateCopyWith<$Res>  {
  factory $SwitchStateCopyWith(SwitchState value, $Res Function(SwitchState) _then) = _$SwitchStateCopyWithImpl;
@useResult
$Res call({
 bool isEnabled
});




}
/// @nodoc
class _$SwitchStateCopyWithImpl<$Res>
    implements $SwitchStateCopyWith<$Res> {
  _$SwitchStateCopyWithImpl(this._self, this._then);

  final SwitchState _self;
  final $Res Function(SwitchState) _then;

/// Create a copy of SwitchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isEnabled = null,}) {
  return _then(_self.copyWith(
isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SwitchState].
extension SwitchStatePatterns on SwitchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwitchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwitchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwitchState value)  $default,){
final _that = this;
switch (_that) {
case _SwitchState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwitchState value)?  $default,){
final _that = this;
switch (_that) {
case _SwitchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwitchState() when $default != null:
return $default(_that.isEnabled);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isEnabled)  $default,) {final _that = this;
switch (_that) {
case _SwitchState():
return $default(_that.isEnabled);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isEnabled)?  $default,) {final _that = this;
switch (_that) {
case _SwitchState() when $default != null:
return $default(_that.isEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SwitchState implements SwitchState {
  const _SwitchState({required this.isEnabled});
  factory _SwitchState.fromJson(Map<String, dynamic> json) => _$SwitchStateFromJson(json);

@override final  bool isEnabled;

/// Create a copy of SwitchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchStateCopyWith<_SwitchState> get copyWith => __$SwitchStateCopyWithImpl<_SwitchState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwitchStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchState&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isEnabled);

@override
String toString() {
  return 'SwitchState(isEnabled: $isEnabled)';
}


}

/// @nodoc
abstract mixin class _$SwitchStateCopyWith<$Res> implements $SwitchStateCopyWith<$Res> {
  factory _$SwitchStateCopyWith(_SwitchState value, $Res Function(_SwitchState) _then) = __$SwitchStateCopyWithImpl;
@override @useResult
$Res call({
 bool isEnabled
});




}
/// @nodoc
class __$SwitchStateCopyWithImpl<$Res>
    implements _$SwitchStateCopyWith<$Res> {
  __$SwitchStateCopyWithImpl(this._self, this._then);

  final _SwitchState _self;
  final $Res Function(_SwitchState) _then;

/// Create a copy of SwitchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isEnabled = null,}) {
  return _then(_SwitchState(
isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

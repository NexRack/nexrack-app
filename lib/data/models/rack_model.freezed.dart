// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RackModel {

 String get id; String get ip; String get name;
/// Create a copy of RackModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RackModelCopyWith<RackModel> get copyWith => _$RackModelCopyWithImpl<RackModel>(this as RackModel, _$identity);

  /// Serializes this RackModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RackModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ip,name);

@override
String toString() {
  return 'RackModel(id: $id, ip: $ip, name: $name)';
}


}

/// @nodoc
abstract mixin class $RackModelCopyWith<$Res>  {
  factory $RackModelCopyWith(RackModel value, $Res Function(RackModel) _then) = _$RackModelCopyWithImpl;
@useResult
$Res call({
 String id, String ip, String name
});




}
/// @nodoc
class _$RackModelCopyWithImpl<$Res>
    implements $RackModelCopyWith<$Res> {
  _$RackModelCopyWithImpl(this._self, this._then);

  final RackModel _self;
  final $Res Function(RackModel) _then;

/// Create a copy of RackModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ip = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RackModel].
extension RackModelPatterns on RackModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RackModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RackModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RackModel value)  $default,){
final _that = this;
switch (_that) {
case _RackModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RackModel value)?  $default,){
final _that = this;
switch (_that) {
case _RackModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ip,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RackModel() when $default != null:
return $default(_that.id,_that.ip,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ip,  String name)  $default,) {final _that = this;
switch (_that) {
case _RackModel():
return $default(_that.id,_that.ip,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ip,  String name)?  $default,) {final _that = this;
switch (_that) {
case _RackModel() when $default != null:
return $default(_that.id,_that.ip,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RackModel extends RackModel {
  const _RackModel({required this.id, required this.ip, required this.name}): super._();
  factory _RackModel.fromJson(Map<String, dynamic> json) => _$RackModelFromJson(json);

@override final  String id;
@override final  String ip;
@override final  String name;

/// Create a copy of RackModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RackModelCopyWith<_RackModel> get copyWith => __$RackModelCopyWithImpl<_RackModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RackModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RackModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ip, ip) || other.ip == ip)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ip,name);

@override
String toString() {
  return 'RackModel(id: $id, ip: $ip, name: $name)';
}


}

/// @nodoc
abstract mixin class _$RackModelCopyWith<$Res> implements $RackModelCopyWith<$Res> {
  factory _$RackModelCopyWith(_RackModel value, $Res Function(_RackModel) _then) = __$RackModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String ip, String name
});




}
/// @nodoc
class __$RackModelCopyWithImpl<$Res>
    implements _$RackModelCopyWith<$Res> {
  __$RackModelCopyWithImpl(this._self, this._then);

  final _RackModel _self;
  final $Res Function(_RackModel) _then;

/// Create a copy of RackModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ip = null,Object? name = null,}) {
  return _then(_RackModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ip: null == ip ? _self.ip : ip // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

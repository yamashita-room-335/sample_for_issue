// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyListItem {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Create a copy of MyListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyListItemCopyWith<MyListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListItemCopyWith<$Res> {
  factory $MyListItemCopyWith(
          MyListItem value, $Res Function(MyListItem) then) =
      _$MyListItemCopyWithImpl<$Res, MyListItem>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$MyListItemCopyWithImpl<$Res, $Val extends MyListItem>
    implements $MyListItemCopyWith<$Res> {
  _$MyListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyListItemImplCopyWith<$Res>
    implements $MyListItemCopyWith<$Res> {
  factory _$$MyListItemImplCopyWith(
          _$MyListItemImpl value, $Res Function(_$MyListItemImpl) then) =
      __$$MyListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$MyListItemImplCopyWithImpl<$Res>
    extends _$MyListItemCopyWithImpl<$Res, _$MyListItemImpl>
    implements _$$MyListItemImplCopyWith<$Res> {
  __$$MyListItemImplCopyWithImpl(
      _$MyListItemImpl _value, $Res Function(_$MyListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$MyListItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyListItemImpl implements _MyListItem {
  const _$MyListItemImpl({required this.id, this.text = ''});

  @override
  final String id;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'MyListItem(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  /// Create a copy of MyListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyListItemImplCopyWith<_$MyListItemImpl> get copyWith =>
      __$$MyListItemImplCopyWithImpl<_$MyListItemImpl>(this, _$identity);
}

abstract class _MyListItem implements MyListItem {
  const factory _MyListItem({required final String id, final String text}) =
      _$MyListItemImpl;

  @override
  String get id;
  @override
  String get text;

  /// Create a copy of MyListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyListItemImplCopyWith<_$MyListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreChatModel {
  ChatTab get tab;
  List<String> get chatGroups;
  DialogBg get dialogBg;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreChatModelCopyWith<StoreChatModel> get copyWith =>
      _$StoreChatModelCopyWithImpl<StoreChatModel>(
          this as StoreChatModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreChatModel &&
            (identical(other.tab, tab) || other.tab == tab) &&
            const DeepCollectionEquality()
                .equals(other.chatGroups, chatGroups) &&
            (identical(other.dialogBg, dialogBg) ||
                other.dialogBg == dialogBg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab,
      const DeepCollectionEquality().hash(chatGroups), dialogBg);

  @override
  String toString() {
    return 'StoreChatModel(tab: $tab, chatGroups: $chatGroups, dialogBg: $dialogBg)';
  }
}

/// @nodoc
abstract mixin class $StoreChatModelCopyWith<$Res> {
  factory $StoreChatModelCopyWith(
          StoreChatModel value, $Res Function(StoreChatModel) _then) =
      _$StoreChatModelCopyWithImpl;
  @useResult
  $Res call({ChatTab tab, List<String> chatGroups, DialogBg dialogBg});
}

/// @nodoc
class _$StoreChatModelCopyWithImpl<$Res>
    implements $StoreChatModelCopyWith<$Res> {
  _$StoreChatModelCopyWithImpl(this._self, this._then);

  final StoreChatModel _self;
  final $Res Function(StoreChatModel) _then;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? chatGroups = null,
    Object? dialogBg = null,
  }) {
    return _then(_self.copyWith(
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as ChatTab,
      chatGroups: null == chatGroups
          ? _self.chatGroups
          : chatGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dialogBg: null == dialogBg
          ? _self.dialogBg
          : dialogBg // ignore: cast_nullable_to_non_nullable
              as DialogBg,
    ));
  }
}

/// Adds pattern-matching-related methods to [StoreChatModel].
extension StoreChatModelPatterns on StoreChatModel {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StoreChatModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StoreChatModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StoreChatModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ChatTab tab, List<String> chatGroups, DialogBg dialogBg)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
        return $default(_that.tab, _that.chatGroups, _that.dialogBg);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ChatTab tab, List<String> chatGroups, DialogBg dialogBg)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel():
        return $default(_that.tab, _that.chatGroups, _that.dialogBg);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ChatTab tab, List<String> chatGroups, DialogBg dialogBg)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoreChatModel() when $default != null:
        return $default(_that.tab, _that.chatGroups, _that.dialogBg);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StoreChatModel implements StoreChatModel {
  const _StoreChatModel(
      {required this.tab,
      required final List<String> chatGroups,
      required this.dialogBg})
      : _chatGroups = chatGroups;

  @override
  final ChatTab tab;
  final List<String> _chatGroups;
  @override
  List<String> get chatGroups {
    if (_chatGroups is EqualUnmodifiableListView) return _chatGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatGroups);
  }

  @override
  final DialogBg dialogBg;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreChatModelCopyWith<_StoreChatModel> get copyWith =>
      __$StoreChatModelCopyWithImpl<_StoreChatModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreChatModel &&
            (identical(other.tab, tab) || other.tab == tab) &&
            const DeepCollectionEquality()
                .equals(other._chatGroups, _chatGroups) &&
            (identical(other.dialogBg, dialogBg) ||
                other.dialogBg == dialogBg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab,
      const DeepCollectionEquality().hash(_chatGroups), dialogBg);

  @override
  String toString() {
    return 'StoreChatModel(tab: $tab, chatGroups: $chatGroups, dialogBg: $dialogBg)';
  }
}

/// @nodoc
abstract mixin class _$StoreChatModelCopyWith<$Res>
    implements $StoreChatModelCopyWith<$Res> {
  factory _$StoreChatModelCopyWith(
          _StoreChatModel value, $Res Function(_StoreChatModel) _then) =
      __$StoreChatModelCopyWithImpl;
  @override
  @useResult
  $Res call({ChatTab tab, List<String> chatGroups, DialogBg dialogBg});
}

/// @nodoc
class __$StoreChatModelCopyWithImpl<$Res>
    implements _$StoreChatModelCopyWith<$Res> {
  __$StoreChatModelCopyWithImpl(this._self, this._then);

  final _StoreChatModel _self;
  final $Res Function(_StoreChatModel) _then;

  /// Create a copy of StoreChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tab = null,
    Object? chatGroups = null,
    Object? dialogBg = null,
  }) {
    return _then(_StoreChatModel(
      tab: null == tab
          ? _self.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as ChatTab,
      chatGroups: null == chatGroups
          ? _self._chatGroups
          : chatGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dialogBg: null == dialogBg
          ? _self.dialogBg
          : dialogBg // ignore: cast_nullable_to_non_nullable
              as DialogBg,
    ));
  }
}

// dart format on

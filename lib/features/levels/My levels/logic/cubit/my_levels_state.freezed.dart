// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_levels_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MyLevelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myLevelLoading,
    required TResult Function(List<CreateLevelResponse> myLevelsResponse)
    myLevelSuccess,
    required TResult Function(ErrorHandler errorHandler) myLevelError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myLevelLoading,
    TResult? Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult? Function(ErrorHandler errorHandler)? myLevelError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myLevelLoading,
    TResult Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult Function(ErrorHandler errorHandler)? myLevelError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyLevelLoading value) myLevelLoading,
    required TResult Function(MyLevelSuccess value) myLevelSuccess,
    required TResult Function(MyLevelError value) myLevelError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyLevelLoading value)? myLevelLoading,
    TResult? Function(MyLevelSuccess value)? myLevelSuccess,
    TResult? Function(MyLevelError value)? myLevelError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyLevelLoading value)? myLevelLoading,
    TResult Function(MyLevelSuccess value)? myLevelSuccess,
    TResult Function(MyLevelError value)? myLevelError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyLevelStateCopyWith<$Res> {
  factory $MyLevelStateCopyWith(
    MyLevelState value,
    $Res Function(MyLevelState) then,
  ) = _$MyLevelStateCopyWithImpl<$Res, MyLevelState>;
}

/// @nodoc
class _$MyLevelStateCopyWithImpl<$Res, $Val extends MyLevelState>
    implements $MyLevelStateCopyWith<$Res> {
  _$MyLevelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MyLevelStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MyLevelState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myLevelLoading,
    required TResult Function(List<CreateLevelResponse> myLevelsResponse)
    myLevelSuccess,
    required TResult Function(ErrorHandler errorHandler) myLevelError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myLevelLoading,
    TResult? Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult? Function(ErrorHandler errorHandler)? myLevelError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myLevelLoading,
    TResult Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult Function(ErrorHandler errorHandler)? myLevelError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyLevelLoading value) myLevelLoading,
    required TResult Function(MyLevelSuccess value) myLevelSuccess,
    required TResult Function(MyLevelError value) myLevelError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyLevelLoading value)? myLevelLoading,
    TResult? Function(MyLevelSuccess value)? myLevelSuccess,
    TResult? Function(MyLevelError value)? myLevelError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyLevelLoading value)? myLevelLoading,
    TResult Function(MyLevelSuccess value)? myLevelSuccess,
    TResult Function(MyLevelError value)? myLevelError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyLevelState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MyLevelLoadingImplCopyWith<$Res> {
  factory _$$MyLevelLoadingImplCopyWith(
    _$MyLevelLoadingImpl value,
    $Res Function(_$MyLevelLoadingImpl) then,
  ) = __$$MyLevelLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyLevelLoadingImplCopyWithImpl<$Res>
    extends _$MyLevelStateCopyWithImpl<$Res, _$MyLevelLoadingImpl>
    implements _$$MyLevelLoadingImplCopyWith<$Res> {
  __$$MyLevelLoadingImplCopyWithImpl(
    _$MyLevelLoadingImpl _value,
    $Res Function(_$MyLevelLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MyLevelLoadingImpl implements MyLevelLoading {
  const _$MyLevelLoadingImpl();

  @override
  String toString() {
    return 'MyLevelState.myLevelLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyLevelLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myLevelLoading,
    required TResult Function(List<CreateLevelResponse> myLevelsResponse)
    myLevelSuccess,
    required TResult Function(ErrorHandler errorHandler) myLevelError,
  }) {
    return myLevelLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myLevelLoading,
    TResult? Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult? Function(ErrorHandler errorHandler)? myLevelError,
  }) {
    return myLevelLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myLevelLoading,
    TResult Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult Function(ErrorHandler errorHandler)? myLevelError,
    required TResult orElse(),
  }) {
    if (myLevelLoading != null) {
      return myLevelLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyLevelLoading value) myLevelLoading,
    required TResult Function(MyLevelSuccess value) myLevelSuccess,
    required TResult Function(MyLevelError value) myLevelError,
  }) {
    return myLevelLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyLevelLoading value)? myLevelLoading,
    TResult? Function(MyLevelSuccess value)? myLevelSuccess,
    TResult? Function(MyLevelError value)? myLevelError,
  }) {
    return myLevelLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyLevelLoading value)? myLevelLoading,
    TResult Function(MyLevelSuccess value)? myLevelSuccess,
    TResult Function(MyLevelError value)? myLevelError,
    required TResult orElse(),
  }) {
    if (myLevelLoading != null) {
      return myLevelLoading(this);
    }
    return orElse();
  }
}

abstract class MyLevelLoading implements MyLevelState {
  const factory MyLevelLoading() = _$MyLevelLoadingImpl;
}

/// @nodoc
abstract class _$$MyLevelSuccessImplCopyWith<$Res> {
  factory _$$MyLevelSuccessImplCopyWith(
    _$MyLevelSuccessImpl value,
    $Res Function(_$MyLevelSuccessImpl) then,
  ) = __$$MyLevelSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateLevelResponse> myLevelsResponse});
}

/// @nodoc
class __$$MyLevelSuccessImplCopyWithImpl<$Res>
    extends _$MyLevelStateCopyWithImpl<$Res, _$MyLevelSuccessImpl>
    implements _$$MyLevelSuccessImplCopyWith<$Res> {
  __$$MyLevelSuccessImplCopyWithImpl(
    _$MyLevelSuccessImpl _value,
    $Res Function(_$MyLevelSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? myLevelsResponse = null}) {
    return _then(
      _$MyLevelSuccessImpl(
        null == myLevelsResponse
            ? _value._myLevelsResponse
            : myLevelsResponse // ignore: cast_nullable_to_non_nullable
                as List<CreateLevelResponse>,
      ),
    );
  }
}

/// @nodoc

class _$MyLevelSuccessImpl implements MyLevelSuccess {
  const _$MyLevelSuccessImpl(final List<CreateLevelResponse> myLevelsResponse)
    : _myLevelsResponse = myLevelsResponse;

  final List<CreateLevelResponse> _myLevelsResponse;
  @override
  List<CreateLevelResponse> get myLevelsResponse {
    if (_myLevelsResponse is EqualUnmodifiableListView)
      return _myLevelsResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myLevelsResponse);
  }

  @override
  String toString() {
    return 'MyLevelState.myLevelSuccess(myLevelsResponse: $myLevelsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLevelSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._myLevelsResponse,
              _myLevelsResponse,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_myLevelsResponse),
  );

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLevelSuccessImplCopyWith<_$MyLevelSuccessImpl> get copyWith =>
      __$$MyLevelSuccessImplCopyWithImpl<_$MyLevelSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myLevelLoading,
    required TResult Function(List<CreateLevelResponse> myLevelsResponse)
    myLevelSuccess,
    required TResult Function(ErrorHandler errorHandler) myLevelError,
  }) {
    return myLevelSuccess(myLevelsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myLevelLoading,
    TResult? Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult? Function(ErrorHandler errorHandler)? myLevelError,
  }) {
    return myLevelSuccess?.call(myLevelsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myLevelLoading,
    TResult Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult Function(ErrorHandler errorHandler)? myLevelError,
    required TResult orElse(),
  }) {
    if (myLevelSuccess != null) {
      return myLevelSuccess(myLevelsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyLevelLoading value) myLevelLoading,
    required TResult Function(MyLevelSuccess value) myLevelSuccess,
    required TResult Function(MyLevelError value) myLevelError,
  }) {
    return myLevelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyLevelLoading value)? myLevelLoading,
    TResult? Function(MyLevelSuccess value)? myLevelSuccess,
    TResult? Function(MyLevelError value)? myLevelError,
  }) {
    return myLevelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyLevelLoading value)? myLevelLoading,
    TResult Function(MyLevelSuccess value)? myLevelSuccess,
    TResult Function(MyLevelError value)? myLevelError,
    required TResult orElse(),
  }) {
    if (myLevelSuccess != null) {
      return myLevelSuccess(this);
    }
    return orElse();
  }
}

abstract class MyLevelSuccess implements MyLevelState {
  const factory MyLevelSuccess(
    final List<CreateLevelResponse> myLevelsResponse,
  ) = _$MyLevelSuccessImpl;

  List<CreateLevelResponse> get myLevelsResponse;

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyLevelSuccessImplCopyWith<_$MyLevelSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyLevelErrorImplCopyWith<$Res> {
  factory _$$MyLevelErrorImplCopyWith(
    _$MyLevelErrorImpl value,
    $Res Function(_$MyLevelErrorImpl) then,
  ) = __$$MyLevelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$MyLevelErrorImplCopyWithImpl<$Res>
    extends _$MyLevelStateCopyWithImpl<$Res, _$MyLevelErrorImpl>
    implements _$$MyLevelErrorImplCopyWith<$Res> {
  __$$MyLevelErrorImplCopyWithImpl(
    _$MyLevelErrorImpl _value,
    $Res Function(_$MyLevelErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorHandler = null}) {
    return _then(
      _$MyLevelErrorImpl(
        null == errorHandler
            ? _value.errorHandler
            : errorHandler // ignore: cast_nullable_to_non_nullable
                as ErrorHandler,
      ),
    );
  }
}

/// @nodoc

class _$MyLevelErrorImpl implements MyLevelError {
  const _$MyLevelErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'MyLevelState.myLevelError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyLevelErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyLevelErrorImplCopyWith<_$MyLevelErrorImpl> get copyWith =>
      __$$MyLevelErrorImplCopyWithImpl<_$MyLevelErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myLevelLoading,
    required TResult Function(List<CreateLevelResponse> myLevelsResponse)
    myLevelSuccess,
    required TResult Function(ErrorHandler errorHandler) myLevelError,
  }) {
    return myLevelError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myLevelLoading,
    TResult? Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult? Function(ErrorHandler errorHandler)? myLevelError,
  }) {
    return myLevelError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myLevelLoading,
    TResult Function(List<CreateLevelResponse> myLevelsResponse)?
    myLevelSuccess,
    TResult Function(ErrorHandler errorHandler)? myLevelError,
    required TResult orElse(),
  }) {
    if (myLevelError != null) {
      return myLevelError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MyLevelLoading value) myLevelLoading,
    required TResult Function(MyLevelSuccess value) myLevelSuccess,
    required TResult Function(MyLevelError value) myLevelError,
  }) {
    return myLevelError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MyLevelLoading value)? myLevelLoading,
    TResult? Function(MyLevelSuccess value)? myLevelSuccess,
    TResult? Function(MyLevelError value)? myLevelError,
  }) {
    return myLevelError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MyLevelLoading value)? myLevelLoading,
    TResult Function(MyLevelSuccess value)? myLevelSuccess,
    TResult Function(MyLevelError value)? myLevelError,
    required TResult orElse(),
  }) {
    if (myLevelError != null) {
      return myLevelError(this);
    }
    return orElse();
  }
}

abstract class MyLevelError implements MyLevelState {
  const factory MyLevelError(final ErrorHandler errorHandler) =
      _$MyLevelErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of MyLevelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyLevelErrorImplCopyWith<_$MyLevelErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

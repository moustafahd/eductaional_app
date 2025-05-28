// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learn_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LearnState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() learnLoading,
    required TResult Function(List<CreateLessonResponse> learnsResponse)
    learnSuccess,
    required TResult Function(ErrorHandler errorHandler) learnError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? learnLoading,
    TResult? Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult? Function(ErrorHandler errorHandler)? learnError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? learnLoading,
    TResult Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult Function(ErrorHandler errorHandler)? learnError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LearnLoading value) learnLoading,
    required TResult Function(LearnSuccess value) learnSuccess,
    required TResult Function(LearnError value) learnError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LearnLoading value)? learnLoading,
    TResult? Function(LearnSuccess value)? learnSuccess,
    TResult? Function(LearnError value)? learnError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LearnLoading value)? learnLoading,
    TResult Function(LearnSuccess value)? learnSuccess,
    TResult Function(LearnError value)? learnError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearnStateCopyWith<$Res> {
  factory $LearnStateCopyWith(
    LearnState value,
    $Res Function(LearnState) then,
  ) = _$LearnStateCopyWithImpl<$Res, LearnState>;
}

/// @nodoc
class _$LearnStateCopyWithImpl<$Res, $Val extends LearnState>
    implements $LearnStateCopyWith<$Res> {
  _$LearnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LearnState
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
    extends _$LearnStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LearnState.initial()';
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
    required TResult Function() learnLoading,
    required TResult Function(List<CreateLessonResponse> learnsResponse)
    learnSuccess,
    required TResult Function(ErrorHandler errorHandler) learnError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? learnLoading,
    TResult? Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult? Function(ErrorHandler errorHandler)? learnError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? learnLoading,
    TResult Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult Function(ErrorHandler errorHandler)? learnError,
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
    required TResult Function(LearnLoading value) learnLoading,
    required TResult Function(LearnSuccess value) learnSuccess,
    required TResult Function(LearnError value) learnError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LearnLoading value)? learnLoading,
    TResult? Function(LearnSuccess value)? learnSuccess,
    TResult? Function(LearnError value)? learnError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LearnLoading value)? learnLoading,
    TResult Function(LearnSuccess value)? learnSuccess,
    TResult Function(LearnError value)? learnError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LearnState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LearnLoadingImplCopyWith<$Res> {
  factory _$$LearnLoadingImplCopyWith(
    _$LearnLoadingImpl value,
    $Res Function(_$LearnLoadingImpl) then,
  ) = __$$LearnLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LearnLoadingImplCopyWithImpl<$Res>
    extends _$LearnStateCopyWithImpl<$Res, _$LearnLoadingImpl>
    implements _$$LearnLoadingImplCopyWith<$Res> {
  __$$LearnLoadingImplCopyWithImpl(
    _$LearnLoadingImpl _value,
    $Res Function(_$LearnLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LearnLoadingImpl implements LearnLoading {
  const _$LearnLoadingImpl();

  @override
  String toString() {
    return 'LearnState.learnLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LearnLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() learnLoading,
    required TResult Function(List<CreateLessonResponse> learnsResponse)
    learnSuccess,
    required TResult Function(ErrorHandler errorHandler) learnError,
  }) {
    return learnLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? learnLoading,
    TResult? Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult? Function(ErrorHandler errorHandler)? learnError,
  }) {
    return learnLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? learnLoading,
    TResult Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult Function(ErrorHandler errorHandler)? learnError,
    required TResult orElse(),
  }) {
    if (learnLoading != null) {
      return learnLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LearnLoading value) learnLoading,
    required TResult Function(LearnSuccess value) learnSuccess,
    required TResult Function(LearnError value) learnError,
  }) {
    return learnLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LearnLoading value)? learnLoading,
    TResult? Function(LearnSuccess value)? learnSuccess,
    TResult? Function(LearnError value)? learnError,
  }) {
    return learnLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LearnLoading value)? learnLoading,
    TResult Function(LearnSuccess value)? learnSuccess,
    TResult Function(LearnError value)? learnError,
    required TResult orElse(),
  }) {
    if (learnLoading != null) {
      return learnLoading(this);
    }
    return orElse();
  }
}

abstract class LearnLoading implements LearnState {
  const factory LearnLoading() = _$LearnLoadingImpl;
}

/// @nodoc
abstract class _$$LearnSuccessImplCopyWith<$Res> {
  factory _$$LearnSuccessImplCopyWith(
    _$LearnSuccessImpl value,
    $Res Function(_$LearnSuccessImpl) then,
  ) = __$$LearnSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreateLessonResponse> learnsResponse});
}

/// @nodoc
class __$$LearnSuccessImplCopyWithImpl<$Res>
    extends _$LearnStateCopyWithImpl<$Res, _$LearnSuccessImpl>
    implements _$$LearnSuccessImplCopyWith<$Res> {
  __$$LearnSuccessImplCopyWithImpl(
    _$LearnSuccessImpl _value,
    $Res Function(_$LearnSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? learnsResponse = null}) {
    return _then(
      _$LearnSuccessImpl(
        null == learnsResponse
            ? _value._learnsResponse
            : learnsResponse // ignore: cast_nullable_to_non_nullable
                as List<CreateLessonResponse>,
      ),
    );
  }
}

/// @nodoc

class _$LearnSuccessImpl implements LearnSuccess {
  const _$LearnSuccessImpl(final List<CreateLessonResponse> learnsResponse)
    : _learnsResponse = learnsResponse;

  final List<CreateLessonResponse> _learnsResponse;
  @override
  List<CreateLessonResponse> get learnsResponse {
    if (_learnsResponse is EqualUnmodifiableListView) return _learnsResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learnsResponse);
  }

  @override
  String toString() {
    return 'LearnState.learnSuccess(learnsResponse: $learnsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearnSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._learnsResponse,
              _learnsResponse,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_learnsResponse),
  );

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearnSuccessImplCopyWith<_$LearnSuccessImpl> get copyWith =>
      __$$LearnSuccessImplCopyWithImpl<_$LearnSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() learnLoading,
    required TResult Function(List<CreateLessonResponse> learnsResponse)
    learnSuccess,
    required TResult Function(ErrorHandler errorHandler) learnError,
  }) {
    return learnSuccess(learnsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? learnLoading,
    TResult? Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult? Function(ErrorHandler errorHandler)? learnError,
  }) {
    return learnSuccess?.call(learnsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? learnLoading,
    TResult Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult Function(ErrorHandler errorHandler)? learnError,
    required TResult orElse(),
  }) {
    if (learnSuccess != null) {
      return learnSuccess(learnsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LearnLoading value) learnLoading,
    required TResult Function(LearnSuccess value) learnSuccess,
    required TResult Function(LearnError value) learnError,
  }) {
    return learnSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LearnLoading value)? learnLoading,
    TResult? Function(LearnSuccess value)? learnSuccess,
    TResult? Function(LearnError value)? learnError,
  }) {
    return learnSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LearnLoading value)? learnLoading,
    TResult Function(LearnSuccess value)? learnSuccess,
    TResult Function(LearnError value)? learnError,
    required TResult orElse(),
  }) {
    if (learnSuccess != null) {
      return learnSuccess(this);
    }
    return orElse();
  }
}

abstract class LearnSuccess implements LearnState {
  const factory LearnSuccess(final List<CreateLessonResponse> learnsResponse) =
      _$LearnSuccessImpl;

  List<CreateLessonResponse> get learnsResponse;

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearnSuccessImplCopyWith<_$LearnSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearnErrorImplCopyWith<$Res> {
  factory _$$LearnErrorImplCopyWith(
    _$LearnErrorImpl value,
    $Res Function(_$LearnErrorImpl) then,
  ) = __$$LearnErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$LearnErrorImplCopyWithImpl<$Res>
    extends _$LearnStateCopyWithImpl<$Res, _$LearnErrorImpl>
    implements _$$LearnErrorImplCopyWith<$Res> {
  __$$LearnErrorImplCopyWithImpl(
    _$LearnErrorImpl _value,
    $Res Function(_$LearnErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorHandler = null}) {
    return _then(
      _$LearnErrorImpl(
        null == errorHandler
            ? _value.errorHandler
            : errorHandler // ignore: cast_nullable_to_non_nullable
                as ErrorHandler,
      ),
    );
  }
}

/// @nodoc

class _$LearnErrorImpl implements LearnError {
  const _$LearnErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'LearnState.learnError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearnErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LearnErrorImplCopyWith<_$LearnErrorImpl> get copyWith =>
      __$$LearnErrorImplCopyWithImpl<_$LearnErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() learnLoading,
    required TResult Function(List<CreateLessonResponse> learnsResponse)
    learnSuccess,
    required TResult Function(ErrorHandler errorHandler) learnError,
  }) {
    return learnError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? learnLoading,
    TResult? Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult? Function(ErrorHandler errorHandler)? learnError,
  }) {
    return learnError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? learnLoading,
    TResult Function(List<CreateLessonResponse> learnsResponse)? learnSuccess,
    TResult Function(ErrorHandler errorHandler)? learnError,
    required TResult orElse(),
  }) {
    if (learnError != null) {
      return learnError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LearnLoading value) learnLoading,
    required TResult Function(LearnSuccess value) learnSuccess,
    required TResult Function(LearnError value) learnError,
  }) {
    return learnError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LearnLoading value)? learnLoading,
    TResult? Function(LearnSuccess value)? learnSuccess,
    TResult? Function(LearnError value)? learnError,
  }) {
    return learnError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LearnLoading value)? learnLoading,
    TResult Function(LearnSuccess value)? learnSuccess,
    TResult Function(LearnError value)? learnError,
    required TResult orElse(),
  }) {
    if (learnError != null) {
      return learnError(this);
    }
    return orElse();
  }
}

abstract class LearnError implements LearnState {
  const factory LearnError(final ErrorHandler errorHandler) = _$LearnErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of LearnState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LearnErrorImplCopyWith<_$LearnErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

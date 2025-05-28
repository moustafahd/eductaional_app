// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedbackState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedbackLoading,
    required TResult Function(List<FeedBackResponse> feedbacksResponse)
    feedbackSuccess,
    required TResult Function(ErrorHandler errorHandler) feedbackError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedbackLoading,
    TResult? Function(List<FeedBackResponse> feedbacksResponse)?
    feedbackSuccess,
    TResult? Function(ErrorHandler errorHandler)? feedbackError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedbackLoading,
    TResult Function(List<FeedBackResponse> feedbacksResponse)? feedbackSuccess,
    TResult Function(ErrorHandler errorHandler)? feedbackError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(FeedbackSuccess value) feedbackSuccess,
    required TResult Function(FeedbackError value) feedbackError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(FeedbackError value)? feedbackError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(FeedbackSuccess value)? feedbackSuccess,
    TResult Function(FeedbackError value)? feedbackError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackStateCopyWith<$Res> {
  factory $FeedbackStateCopyWith(
    FeedbackState value,
    $Res Function(FeedbackState) then,
  ) = _$FeedbackStateCopyWithImpl<$Res, FeedbackState>;
}

/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res, $Val extends FeedbackState>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackState
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
    extends _$FeedbackStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FeedbackState.initial()';
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
    required TResult Function() feedbackLoading,
    required TResult Function(List<FeedBackResponse> feedbacksResponse)
    feedbackSuccess,
    required TResult Function(ErrorHandler errorHandler) feedbackError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedbackLoading,
    TResult? Function(List<FeedBackResponse> feedbacksResponse)?
    feedbackSuccess,
    TResult? Function(ErrorHandler errorHandler)? feedbackError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedbackLoading,
    TResult Function(List<FeedBackResponse> feedbacksResponse)? feedbackSuccess,
    TResult Function(ErrorHandler errorHandler)? feedbackError,
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
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(FeedbackSuccess value) feedbackSuccess,
    required TResult Function(FeedbackError value) feedbackError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(FeedbackError value)? feedbackError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(FeedbackSuccess value)? feedbackSuccess,
    TResult Function(FeedbackError value)? feedbackError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FeedbackState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FeedbackLoadingImplCopyWith<$Res> {
  factory _$$FeedbackLoadingImplCopyWith(
    _$FeedbackLoadingImpl value,
    $Res Function(_$FeedbackLoadingImpl) then,
  ) = __$$FeedbackLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedbackLoadingImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackLoadingImpl>
    implements _$$FeedbackLoadingImplCopyWith<$Res> {
  __$$FeedbackLoadingImplCopyWithImpl(
    _$FeedbackLoadingImpl _value,
    $Res Function(_$FeedbackLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedbackLoadingImpl implements FeedbackLoading {
  const _$FeedbackLoadingImpl();

  @override
  String toString() {
    return 'FeedbackState.feedbackLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeedbackLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedbackLoading,
    required TResult Function(List<FeedBackResponse> feedbacksResponse)
    feedbackSuccess,
    required TResult Function(ErrorHandler errorHandler) feedbackError,
  }) {
    return feedbackLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedbackLoading,
    TResult? Function(List<FeedBackResponse> feedbacksResponse)?
    feedbackSuccess,
    TResult? Function(ErrorHandler errorHandler)? feedbackError,
  }) {
    return feedbackLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedbackLoading,
    TResult Function(List<FeedBackResponse> feedbacksResponse)? feedbackSuccess,
    TResult Function(ErrorHandler errorHandler)? feedbackError,
    required TResult orElse(),
  }) {
    if (feedbackLoading != null) {
      return feedbackLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(FeedbackSuccess value) feedbackSuccess,
    required TResult Function(FeedbackError value) feedbackError,
  }) {
    return feedbackLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(FeedbackError value)? feedbackError,
  }) {
    return feedbackLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(FeedbackSuccess value)? feedbackSuccess,
    TResult Function(FeedbackError value)? feedbackError,
    required TResult orElse(),
  }) {
    if (feedbackLoading != null) {
      return feedbackLoading(this);
    }
    return orElse();
  }
}

abstract class FeedbackLoading implements FeedbackState {
  const factory FeedbackLoading() = _$FeedbackLoadingImpl;
}

/// @nodoc
abstract class _$$FeedbackSuccessImplCopyWith<$Res> {
  factory _$$FeedbackSuccessImplCopyWith(
    _$FeedbackSuccessImpl value,
    $Res Function(_$FeedbackSuccessImpl) then,
  ) = __$$FeedbackSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FeedBackResponse> feedbacksResponse});
}

/// @nodoc
class __$$FeedbackSuccessImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackSuccessImpl>
    implements _$$FeedbackSuccessImplCopyWith<$Res> {
  __$$FeedbackSuccessImplCopyWithImpl(
    _$FeedbackSuccessImpl _value,
    $Res Function(_$FeedbackSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedbacksResponse = null}) {
    return _then(
      _$FeedbackSuccessImpl(
        null == feedbacksResponse
            ? _value._feedbacksResponse
            : feedbacksResponse // ignore: cast_nullable_to_non_nullable
                as List<FeedBackResponse>,
      ),
    );
  }
}

/// @nodoc

class _$FeedbackSuccessImpl implements FeedbackSuccess {
  const _$FeedbackSuccessImpl(final List<FeedBackResponse> feedbacksResponse)
    : _feedbacksResponse = feedbacksResponse;

  final List<FeedBackResponse> _feedbacksResponse;
  @override
  List<FeedBackResponse> get feedbacksResponse {
    if (_feedbacksResponse is EqualUnmodifiableListView)
      return _feedbacksResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbacksResponse);
  }

  @override
  String toString() {
    return 'FeedbackState.feedbackSuccess(feedbacksResponse: $feedbacksResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._feedbacksResponse,
              _feedbacksResponse,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_feedbacksResponse),
  );

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackSuccessImplCopyWith<_$FeedbackSuccessImpl> get copyWith =>
      __$$FeedbackSuccessImplCopyWithImpl<_$FeedbackSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedbackLoading,
    required TResult Function(List<FeedBackResponse> feedbacksResponse)
    feedbackSuccess,
    required TResult Function(ErrorHandler errorHandler) feedbackError,
  }) {
    return feedbackSuccess(feedbacksResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedbackLoading,
    TResult? Function(List<FeedBackResponse> feedbacksResponse)?
    feedbackSuccess,
    TResult? Function(ErrorHandler errorHandler)? feedbackError,
  }) {
    return feedbackSuccess?.call(feedbacksResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedbackLoading,
    TResult Function(List<FeedBackResponse> feedbacksResponse)? feedbackSuccess,
    TResult Function(ErrorHandler errorHandler)? feedbackError,
    required TResult orElse(),
  }) {
    if (feedbackSuccess != null) {
      return feedbackSuccess(feedbacksResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(FeedbackSuccess value) feedbackSuccess,
    required TResult Function(FeedbackError value) feedbackError,
  }) {
    return feedbackSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(FeedbackError value)? feedbackError,
  }) {
    return feedbackSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(FeedbackSuccess value)? feedbackSuccess,
    TResult Function(FeedbackError value)? feedbackError,
    required TResult orElse(),
  }) {
    if (feedbackSuccess != null) {
      return feedbackSuccess(this);
    }
    return orElse();
  }
}

abstract class FeedbackSuccess implements FeedbackState {
  const factory FeedbackSuccess(
    final List<FeedBackResponse> feedbacksResponse,
  ) = _$FeedbackSuccessImpl;

  List<FeedBackResponse> get feedbacksResponse;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackSuccessImplCopyWith<_$FeedbackSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedbackErrorImplCopyWith<$Res> {
  factory _$$FeedbackErrorImplCopyWith(
    _$FeedbackErrorImpl value,
    $Res Function(_$FeedbackErrorImpl) then,
  ) = __$$FeedbackErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$FeedbackErrorImplCopyWithImpl<$Res>
    extends _$FeedbackStateCopyWithImpl<$Res, _$FeedbackErrorImpl>
    implements _$$FeedbackErrorImplCopyWith<$Res> {
  __$$FeedbackErrorImplCopyWithImpl(
    _$FeedbackErrorImpl _value,
    $Res Function(_$FeedbackErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorHandler = null}) {
    return _then(
      _$FeedbackErrorImpl(
        null == errorHandler
            ? _value.errorHandler
            : errorHandler // ignore: cast_nullable_to_non_nullable
                as ErrorHandler,
      ),
    );
  }
}

/// @nodoc

class _$FeedbackErrorImpl implements FeedbackError {
  const _$FeedbackErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'FeedbackState.feedbackError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackErrorImplCopyWith<_$FeedbackErrorImpl> get copyWith =>
      __$$FeedbackErrorImplCopyWithImpl<_$FeedbackErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() feedbackLoading,
    required TResult Function(List<FeedBackResponse> feedbacksResponse)
    feedbackSuccess,
    required TResult Function(ErrorHandler errorHandler) feedbackError,
  }) {
    return feedbackError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? feedbackLoading,
    TResult? Function(List<FeedBackResponse> feedbacksResponse)?
    feedbackSuccess,
    TResult? Function(ErrorHandler errorHandler)? feedbackError,
  }) {
    return feedbackError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? feedbackLoading,
    TResult Function(List<FeedBackResponse> feedbacksResponse)? feedbackSuccess,
    TResult Function(ErrorHandler errorHandler)? feedbackError,
    required TResult orElse(),
  }) {
    if (feedbackError != null) {
      return feedbackError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(FeedbackLoading value) feedbackLoading,
    required TResult Function(FeedbackSuccess value) feedbackSuccess,
    required TResult Function(FeedbackError value) feedbackError,
  }) {
    return feedbackError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(FeedbackLoading value)? feedbackLoading,
    TResult? Function(FeedbackSuccess value)? feedbackSuccess,
    TResult? Function(FeedbackError value)? feedbackError,
  }) {
    return feedbackError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(FeedbackLoading value)? feedbackLoading,
    TResult Function(FeedbackSuccess value)? feedbackSuccess,
    TResult Function(FeedbackError value)? feedbackError,
    required TResult orElse(),
  }) {
    if (feedbackError != null) {
      return feedbackError(this);
    }
    return orElse();
  }
}

abstract class FeedbackError implements FeedbackState {
  const factory FeedbackError(final ErrorHandler errorHandler) =
      _$FeedbackErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of FeedbackState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackErrorImplCopyWith<_$FeedbackErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

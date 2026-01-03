import 'exceptions.dart';

/// Failure class for Result pattern
abstract class Failure {
  final String message;
  const Failure(this.message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure(super.message);
}

class AuthorizationFailure extends Failure {
  const AuthorizationFailure(super.message);
}

class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(super.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class ApplicationFailure extends Failure {
  const ApplicationFailure(super.message);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure(super.message);
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

/// Generic failure
class GenericFailure extends Failure {
  const GenericFailure(super.message);
}

// Error Handler
class ErrorHandler {
  static Failure handleException(dynamic exception) {
    if (exception is DatabaseException) {
      return DatabaseFailure(exception.message);
    } else if (exception is NetworkException) {
      return NetworkFailure(exception.message);
    } else if (exception is AuthenticationException) {
      return AuthenticationFailure(exception.message);
    } else if (exception is AuthorizationException) {
      return AuthorizationFailure(exception.message);
    } else if (exception is ValidationException) {
      return ValidationFailure(exception.message);
    } else if (exception is NotFoundException) {
      return NotFoundFailure(exception.message);
    } else if (exception is ServerException) {
      return ServerFailure(exception.message);
    } else if (exception is TimeoutException) {
      return TimeoutFailure(exception.message);
    } else if (exception is CacheException) {
      return CacheFailure(exception.message);
    } else if (exception is AppException) {
      return ApplicationFailure(exception.message);
    } else {
      return GenericFailure('Unknown error occurred');
    }
  }
}

/// Result type for handling success/failure
abstract class Result<T> {
  R fold<R>(R Function(Failure failure) ifLeft, R Function(T success) ifRight);

  bool isLeft() => this is Left<T>;
  bool isRight() => this is Right<T>;
}

class Left<T> extends Result<T> {
  final Failure failure;
  Left(this.failure);

  @override
  R fold<R>(R Function(Failure failure) ifLeft, R Function(T success) ifRight) {
    return ifLeft(failure);
  }
}

class Right<T> extends Result<T> {
  final T success;
  Right(this.success);

  @override
  R fold<R>(R Function(Failure failure) ifLeft, R Function(T success) ifRight) {
    return ifRight(success);
  }
}

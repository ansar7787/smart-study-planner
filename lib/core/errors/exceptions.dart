/// Base exception for the app
abstract class AppException implements Exception {
  final String message;
  const AppException(this.message);

  @override
  String toString() => message;
}

/// Database-related exceptions
class DatabaseException extends AppException {
  const DatabaseException(super.message);
}

/// Network-related exceptions
class NetworkException extends AppException {
  const NetworkException(super.message);
}

/// Authentication-related exceptions
class AuthenticationException extends AppException {
  const AuthenticationException(super.message);
}

/// Authorization-related exceptions (permissions)
class AuthorizationException extends AppException {
  const AuthorizationException(super.message);
}

/// Validation exceptions
class ValidationException extends AppException {
  const ValidationException(super.message);
}

/// Not found exceptions
class NotFoundException extends AppException {
  const NotFoundException(super.message);
}

/// Server error exceptions
class ServerException extends AppException {
  const ServerException(super.message);
}

/// Generic application exceptions
class ApplicationException extends AppException {
  const ApplicationException(super.message);
}

/// Timeout exceptions
class TimeoutException extends AppException {
  const TimeoutException(super.message);
}

/// Cache exceptions
class CacheException extends AppException {
  const CacheException(super.message);
}

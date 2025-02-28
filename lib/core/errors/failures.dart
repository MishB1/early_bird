/*
Template for Custom Failures/Exceptions

- Define custom exceptions and failures here.
- Example:
  class ServerFailure implements Exception {
    final String message;

    ServerFailure({required this.message});
  }
*/

class ServerFailure implements Exception {
  final String message;

  ServerFailure({required this.message});
}

class CacheFailure implements Exception {
  final String message;

  CacheFailure({required this.message});
}
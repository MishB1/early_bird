/*
Template for Fingerprint Data Source

- Define methods to interact with the fingerprint scanner.
*/

abstract class FingerprintDataSource {
  Future<String> scanFingerprint();
}

class MockFingerprintDataSource implements FingerprintDataSource {
  @override
  Future<String> scanFingerprint() async {
    // Simulate fingerprint scanning
    await Future.delayed(Duration(seconds: 2)); // Simulate delay
    return "1001"; // Return a hardcoded student ID for testing
  }
}

class PhysicalFingerprintDataSource implements FingerprintDataSource {
  @override
  Future<String> scanFingerprint() async {
    // Implement logic to interact with a physical fingerprint scanner
    throw UnimplementedError();
  }
}

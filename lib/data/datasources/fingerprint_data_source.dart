// Abstract class defining the contract for fingerprint data sources.
abstract class FingerprintDataSource {
  Future<String> scanFingerprint();
}

// Mock implementation of FingerprintDataSource for testing purposes.
class MockFingerprintDataSource implements FingerprintDataSource {
  @override
  Future<String> scanFingerprint() async {
    // Simulate a 2-second delay to mimic fingerprint scanning.
    await Future.delayed(Duration(seconds: 1));
    // Return a hardcoded fingerprint template for testing.
    return "template_1002";
  }
}

// Implementation of FingerprintDataSource for interacting with a physical fingerprint scanner.
class PhysicalFingerprintDataSource implements FingerprintDataSource {
  @override
  Future<String> scanFingerprint() async {
    // Placeholder for actual logic to interact with a physical fingerprint scanner.
    throw UnimplementedError();
  }
}
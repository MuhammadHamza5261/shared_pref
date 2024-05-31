import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageClient{

  // create a private constructor
  SecureStorageClient._();

  static final SecureStorageClient _secureStorageClient = SecureStorageClient._();
  static SecureStorageClient get instance => _secureStorageClient;
  factory SecureStorageClient()
  {
      return _secureStorageClient;
  }

   final _storage = const FlutterSecureStorage();



}
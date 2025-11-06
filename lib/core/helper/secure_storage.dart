



import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
    
static const _storage = FlutterSecureStorage();
 /// Saves a [value] with a [key] in the FlutterSecureStorage.
  static setSecuredString(String key, String value) async {
  
    debugPrint(
        "FlutterSecureStorage : setSecuredString with key : $key and value : $value");
    await _storage.write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  static getSecuredString(String key) async {
    
    debugPrint('FlutterSecureStorage : getSecuredString with key :');
    return await _storage.read(key: key) ?? '';
  }

  /// Removes all keys and values in the FlutterSecureStorage
  static clearAllSecuredData() async {
    debugPrint('FlutterSecureStorage : all data has been cleared');
    
    await _storage.deleteAll();
  }
}



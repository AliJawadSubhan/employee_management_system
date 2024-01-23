import 'package:flutter/cupertino.dart';
import 'package:local_auth/local_auth.dart';

class FingerPrintClass {
  static final LocalAuthentication _auth = LocalAuthentication();
  static Future<bool> canAuthenticate() async =>
      await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  static Future<bool> authenticate() async {
    try {
      if (!await canAuthenticate()) {
        return false;
      } else {
        return await _auth.authenticate(
          localizedReason: 'Please press your finger on the sensor',
          options: const AuthenticationOptions(
            biometricOnly: true,
            useErrorDialogs: true,
          ),
        );
      }
    } catch (e) {
      debugPrint("ERROR $e");
      rethrow;
    }
  }
}

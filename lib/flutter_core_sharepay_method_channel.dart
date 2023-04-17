import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_core_sharepay_platform_interface.dart';

/// An implementation of [FlutterCoreSharepayPlatform] that uses method channels.
class MethodChannelFlutterCoreSharepay extends FlutterCoreSharepayPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_core_sharepay');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

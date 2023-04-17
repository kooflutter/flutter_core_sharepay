import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_core_sharepay_method_channel.dart';

abstract class FlutterCoreSharepayPlatform extends PlatformInterface {
  /// Constructs a FlutterCoreSharepayPlatform.
  FlutterCoreSharepayPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCoreSharepayPlatform _instance = MethodChannelFlutterCoreSharepay();

  /// The default instance of [FlutterCoreSharepayPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCoreSharepay].
  static FlutterCoreSharepayPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCoreSharepayPlatform] when
  /// they register themselves.
  static set instance(FlutterCoreSharepayPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}


import 'flutter_core_sharepay_platform_interface.dart';

class FlutterCoreSharepay {
  Future<String?> getPlatformVersion() {
    return FlutterCoreSharepayPlatform.instance.getPlatformVersion();
  }
}

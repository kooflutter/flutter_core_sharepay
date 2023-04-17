import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_sharepay/flutter_core_sharepay.dart';
import 'package:flutter_core_sharepay/flutter_core_sharepay_platform_interface.dart';
import 'package:flutter_core_sharepay/flutter_core_sharepay_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCoreSharepayPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCoreSharepayPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCoreSharepayPlatform initialPlatform = FlutterCoreSharepayPlatform.instance;

  test('$MethodChannelFlutterCoreSharepay is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCoreSharepay>());
  });

  test('getPlatformVersion', () async {
    FlutterCoreSharepay flutterCoreSharepayPlugin = FlutterCoreSharepay();
    MockFlutterCoreSharepayPlatform fakePlatform = MockFlutterCoreSharepayPlatform();
    FlutterCoreSharepayPlatform.instance = fakePlatform;

    expect(await flutterCoreSharepayPlugin.getPlatformVersion(), '42');
  });
}

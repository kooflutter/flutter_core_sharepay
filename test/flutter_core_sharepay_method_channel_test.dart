import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_sharepay/flutter_core_sharepay_method_channel.dart';

void main() {
  MethodChannelFlutterCoreSharepay platform = MethodChannelFlutterCoreSharepay();
  const MethodChannel channel = MethodChannel('flutter_core_sharepay');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

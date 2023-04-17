#include "include/flutter_core_sharepay/flutter_core_sharepay_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_core_sharepay_plugin.h"

void FlutterCoreSharepayPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_core_sharepay::FlutterCoreSharepayPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

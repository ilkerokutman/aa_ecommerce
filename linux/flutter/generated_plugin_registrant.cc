//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <native_splash_screen_linux/native_splash_screen_linux_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) native_splash_screen_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "NativeSplashScreenLinuxPlugin");
  native_splash_screen_linux_plugin_register_with_registrar(native_splash_screen_linux_registrar);
}

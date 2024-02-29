
import 'flutter_pigeon_plugin_platform_interface.dart';

class FlutterPigeonPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterPigeonPluginPlatform.instance.getPlatformVersion();
  }
}

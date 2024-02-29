import 'package:flutter_pigeon_plugin/message.dart';

typedef OnNativeMessage = void Function(N2FMessage msg);

class FlutterPigeonPlugin extends NativeMessage {
  static final FlutterMessage _flutterMessage = FlutterMessage();

  FlutterPigeonPlugin._internal();
  factory FlutterPigeonPlugin() => _getInstance();
  static FlutterPigeonPlugin get instance => _getInstance();
  static FlutterPigeonPlugin? _instance = null;
  static FlutterPigeonPlugin _getInstance() {
    _instance ??= FlutterPigeonPlugin._internal();
    NativeMessage.setup(_instance);
    return _instance!;
  }

  void sendMessage() {
    F2NMessage message = F2NMessage();
    message.msg = "这是一条从Flutter发往Native的消息";
    _flutterMessage.flutterSendMessage(message);
  }

  @override
  void nativeSendMessage(N2FMessage msg) {
    print("收到了Native发来的消息：${msg.msg2}");
    onNativeMessage?.call(msg);
  }

  OnNativeMessage? onNativeMessage;
}

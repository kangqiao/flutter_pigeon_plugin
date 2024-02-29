import 'package:pigeon/pigeon.dart';

class F2NMessage {
  String? msg;
}

class N2FMessage {
  String? msg2;
}

/// flutter发往native的方法flutterSendMessage
@HostApi()
abstract class FlutterMessage {
  void flutterSendMessage(F2NMessage msg);
}

/// native发往flutter的方法nativeSendMessage
@FlutterApi()
abstract class NativeMessage {
  void nativeSendMessage(N2FMessage msg);
}

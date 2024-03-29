mkdir -p android/src/main/java/com/example/flutter_pigeon_plugin

flutter pub run pigeon \
  --input pigeons/message.dart \
  --dart_out lib/message.dart \
  --objc_header_out ios/Classes/Message.h \
  --objc_source_out ios/Classes/Message.m \
  --java_out android/src/main/java/com/example/flutter_pigeon_plugin/Message.java \
  --java_package "com.example.flutter_pigeon_plugin" 
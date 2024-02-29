import 'package:flutter/material.dart';

import 'package:flutter_pigeon_plugin/flutter_pigeon_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterPigeonPlugin = FlutterPigeonPlugin();

  String? nativeMsg;

  @override
  void initState() {
    super.initState();
    _flutterPigeonPlugin.onNativeMessage = (msg) {
      setState(() {
        nativeMsg = msg.msg2;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                child: const Text("点击这里向native发送消息"),
                onPressed: () {
                  _flutterPigeonPlugin.sendMessage();
                },
              ),
              Text(
                'From Native msg:$nativeMsg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DefaultAssetBundle(
        bundle: SentryAssetBundle(),
        child: MyHomePage(),
      ),
      // No flickering occurs when SentryAssetBundle() is not used as shown below.
      // home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: CupertinoContextMenu(
        actions: [
          CupertinoContextMenuAction(
            child: const Text('Action 1'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
        child: Image.asset(
          'assets/bottle_1.png',
          width: 500,
          height: 500,
          // No flickering occurs when setting scale as shown below.
          // scale: 1,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

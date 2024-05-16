import 'package:flutter/material.dart';

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
      routes: {
        '/': (_) => const ParentPage(),
      },
    );
  }
}

class ParentPage extends StatelessWidget {
  const ParentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        Navigator(
          pages: const [
            MaterialPage(
              key: ValueKey('ChildPage'),
              child: ChildPage(),
            ),
          ],
          onPopPage: (route, result) {
            return true;
          },
        ),
      ],
    );
  }
}

class ChildPage extends StatelessWidget {
  const ChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Child'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Child',
            ),
          ],
        ),
      ),
    );
  }
}

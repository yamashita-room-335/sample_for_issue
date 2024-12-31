import 'package:animated_reorderable_list/animated_reorderable_list.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class MyListItem with _$MyListItem {
  const factory MyListItem({
    required String id,
    @Default('') String text,
  }) = _MyListItem;
}

@riverpod
class MyListItemViewModel extends _$MyListItemViewModel {
  @override
  Map<String, MyListItem> build() {
    return {
      '1': MyListItem(
        id: '1',
        text: '1',
      ),
      '2': MyListItem(
        id: '2',
        text: '2',
      ),
      '3': MyListItem(
        id: '3',
        text: '3',
      ),
    };
  }

  void onReorder(int oldIndex, int newIndex) {
    final keys = state.keys.toList();
    final key = keys.removeAt(oldIndex);
    keys.insert(newIndex, key);
    final newMap =
        Map.fromEntries(keys.map((key) => MapEntry(key, state[key]!)));
    state = newMap;
  }
}

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
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
      body: SafeArea(
        child: Consumer(builder: (context, ref, child) {
          final Map<String, MyListItem> map =
              ref.watch(myListItemViewModelProvider);
          final sameInstanceList = map.entries.toList();

          return AnimatedReorderableListView<MapEntry<String, MyListItem>>(
            items: map.entries.toList(),
            nonDraggableItems: map.entries.toList(),
            //　As shown in the code below, the behavior is correct (= not draggable) for the same instance.
            // items: sameInstanceList,
            // nonDraggableItems: sameInstanceList,
            isSameItem: (a, b) => a.key == b.key,
            onReorder: (oldIndex, newIndex) => ref
                .read(myListItemViewModelProvider.notifier)
                .onReorder(oldIndex, newIndex),
            itemBuilder: (context, index) {
              final item = map.entries.elementAt(index);
              return Material(
                key: ValueKey(item.value.id),
                child: ListTile(
                  title: Text(item.value.text),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}

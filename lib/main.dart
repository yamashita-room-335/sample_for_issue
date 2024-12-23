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
  List<MyListItem> build() {
    return [
      MyListItem(
        id: '1',
        text: '1',
      ),
      MyListItem(
        id: '2',
        text: '2',
      ),
      MyListItem(
        id: '3',
        text: '3',
      ),
    ];
  }

  void editItem(int index, String text) {
    final newList = [...state];
    newList[index] = newList[index].copyWith(text: text);
    state = newList;
  }

  void onReorder(int oldIndex, int newIndex) {
    final newList = [...state];
    final item = newList.removeAt(oldIndex);
    newList.insert(newIndex, item);
    state = newList;
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
        actions: [
          Consumer(builder: (context, ref, child) {
            return IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                ref
                    .read(myListItemViewModelProvider.notifier)
                    .editItem(1, 'edited');
              },
            );
          }),
        ],
      ),
      body: SafeArea(
        child: Consumer(builder: (context, ref, child) {
          final List<MyListItem> items = ref.watch(myListItemViewModelProvider);

          return AnimatedReorderableListView(
            items: items,
            onReorder: (oldIndex, newIndex) => ref
                .read(myListItemViewModelProvider.notifier)
                .onReorder(oldIndex, newIndex),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                key: ValueKey(item.id),
                title: Text(item.text),
              );
            },
          );
        }),
      ),
    );
  }
}

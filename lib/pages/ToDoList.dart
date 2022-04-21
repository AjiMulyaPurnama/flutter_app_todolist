import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_app_todolist/models/item.dart';
import 'package:flutter_app_todolist/providers/item_list_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Tengah Semester',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Home(),
    );
  }
}

class Home extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:
          const Text("MyApp", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange
      ),
      body: Column(
        children: [
          Container(
                color: Colors.orange,
                height: 200,
                alignment: Alignment.center,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff7c4b6),
                        image: const DecorationImage(
                          image: 
                            NetworkImage('assets/bln2.1.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 150,
                      width: 500,
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50),
                    ),
                  ],
                  ),
          ),
          Container(
                color: Colors.orange,
                height: 30,
              ),
              Padding(padding: const EdgeInsets.all(5),),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.orange,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Schedule',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    
                    Text(
                      'Category',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Your task',
                            style: TextStyle(color: Colors.white, fontSize: 15)
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            color: Colors.white,
                            height: 3,
                            width: 60,
                          )
                        ]),
                    ),
                  ],
                ),
              ),
          TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'To do ...'),
            onSubmitted: (value) {
              context.read(itemListProvider.notifier).addItem(
                    Item(name: value),
                  );

              _controller.clear();
            },
          ),
          Expanded(
            child: Consumer(
              builder: (context, watch, child) {
                final itemList = watch(itemListProvider);

                return ListView.builder(
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    final Item item = itemList[index];

                    return Dismissible(
                      key: ValueKey(item.id),
                      onDismissed: (direction) {
                        context
                            .read(itemListProvider.notifier)
                            .deleteItem(item);
                      },
                      child: CheckboxListTile(
                        value: item.isDone,
                        title: Text(item.name),
                        onChanged: (value) {
                          context
                              .read(itemListProvider.notifier)
                              .updateItem(item..isDone = value ?? false);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoRepository(),
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Todo List'),
            actions: [
              // Add
              Consumer<TodoRepository>(
                builder: (context, repository, child) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Add'),
                            content: TextField(
                              controller: repository.nameController,
                              onChanged: (value) {
                                repository.nameController.text = value;
                              },
                            ),
                            actions: [
                              ElevatedButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  repository.addTask();
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.add),
                    ),
                  );
                },
              ),
            ],
          ),
          body: Consumer<TodoRepository>(
            builder: (context, repository, child) {
              final items = repository.findAllItems();
              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  // return Text(items[index].name);
                  return CheckboxListTile(
                    value: items[index].isDone,
                    title: Text(items[index].name),
                    onChanged: (newValue) {
                      if (newValue != null) {
                        repository.toggleDone(index, newValue);
                      }
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class Task {
  String name;
  bool isDone;

  Task({
    required this.name,
    this.isDone = false,
  });
}

class TodoRepository extends ChangeNotifier {
  final List<Task> _tasks = [Task(name: 'Task1'), Task(name: 'Task2')];
  TextEditingController nameController = TextEditingController();

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  List<Task> findAllItems() {
    return _tasks;
  }

  void toggleDone(int index, bool isDone) {
    var task = _tasks[index];
    task.isDone = isDone;
    _tasks[index] = task;
    notifyListeners();
  }

  void addTask() {
    final newTask = Task(
      name: nameController.text,
    );
    _tasks.add(newTask);
    notifyListeners();
  }
}
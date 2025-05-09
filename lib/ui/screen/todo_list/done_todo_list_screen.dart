import 'package:flutter/material.dart';

import '../../../entities/todo.dart';
import '../../widget/todo_item.dart';

class DoneTodoListScreen extends StatelessWidget {
  const DoneTodoListScreen({
    super.key,
    required this.todoList,
    required this.onDelete,
    required this.onStatusChange,
  });

  final List<Todo> todoList;
  final Function(int) onDelete;
  final Function(int) onStatusChange;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_){
            onDelete(index);
          },
          child: TodoItem(
            todo: todoList[index],
            onIconButtonPressed: () {},
          ),
        );
      },
    );
  }
}

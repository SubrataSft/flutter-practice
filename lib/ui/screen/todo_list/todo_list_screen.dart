import 'package:first_apps/ui/screen/add_new_todo_screen.dart';
import 'package:first_apps/ui/screen/todo_list/all_todo_list_screen.dart';
import 'package:first_apps/ui/screen/todo_list/done_todo_list_screen.dart';
import 'package:first_apps/ui/screen/todo_list/undone_todo_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../entities/todo.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen>
    with SingleTickerProviderStateMixin {
  // late TabController _tabController;
  List<Todo> _todoList = [];

  // @override
  // void initState() {
  //   _tabController = TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TodoListScreen"),
          bottom: _buildTabBar(),
        ),
        body: TabBarView(
          children: [
            AllTodoListScreen(
              todoList: _todoList,
              onDelete:_deleteTodo,
              onStatusChange: _toggleTodoStatus,
            ),
            const UndoneTodoListScreen(),
            DoneTodoListScreen(
              onStatusChange: _toggleTodoStatus,
              onDelete: _deleteTodo,
              todoList: _todoList.where((item)=>item.isDone==false).toList()
            ),
          ],
        ),
        floatingActionButton: _buildAddTodoFAB(),
      ),
    );
  }

  FloatingActionButton _buildAddTodoFAB() {
    return FloatingActionButton.extended(
      tooltip: "Add new item",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddNewTodoScreen(addNewTodo: _addNewTodo),
          ),
        );
      },
      icon: const Icon(Icons.add),
      label: const Text("Add"),
    );
  }

  TabBar _buildTabBar() {
    return const TabBar(
      tabs: [Tab(text: "All"), Tab(text: "Undone"), Tab(text: "Done")],
    );
  }

  void _addNewTodo(Todo todo) {
    _todoList.add(todo);
    if (mounted) {
      setState(() {});
    }
  }

  void _deleteTodo(index) {
    _todoList.removeAt(index);
    if (mounted) {
      setState(() {});
    }
  }

  void _toggleTodoStatus(int index) {
    _todoList[index].isDone = !_todoList[index].isDone;
    if (mounted) {
      setState(() {});
    }
  }
}

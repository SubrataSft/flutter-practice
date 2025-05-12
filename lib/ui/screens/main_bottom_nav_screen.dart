import 'package:first_apps/ui/screens/cancelled_task_screen.dart';
import 'package:first_apps/ui/screens/completed_task_screen.dart';
import 'package:first_apps/ui/screens/in_progress_task_screen.dart';
import 'package:first_apps/ui/screens/new_task_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:first_apps/ui/widgets/profile_app_bar.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;
  List<Widget> _screens = const[
    NewTaskScreen(),
    CompletedTaskScreen(),
    InProgressTaskScreen(),
    CancelledTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar(context),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          if (mounted) {
            setState(() {});
          }
        },
        selectedItemColor:AppColors.themColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "New Task"),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "In Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.close), label: "Canclled"),
        ],
      ),
    );
  }
}

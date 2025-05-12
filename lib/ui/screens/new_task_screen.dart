import 'package:first_apps/ui/screens/add_new_task_screen.dart';
import 'package:first_apps/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/task_item.dart';
import '../widgets/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
        child: Column(
          children: [
            _buildSummarySection(),
            SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return TaskItem();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _onTapAddButton,child: Icon(Icons.add),
      backgroundColor: AppColors.themColor,
      foregroundColor: Colors.white,),
    );
  }
  void _onTapAddButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen()));
  }

  Widget _buildSummarySection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TaskSummaryCard(title: "New task", count: "34"),
          TaskSummaryCard(title: "Completed", count: "34"),
          TaskSummaryCard(title: "InProgress", count: "34"),
          TaskSummaryCard(title: "Cancelled", count: "34"),
          TaskSummaryCard(title: "Cancelled", count: "34"),
          TaskSummaryCard(title: "Cancelled", count: "34"),
        ],
      ),
    );
  }
}


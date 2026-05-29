import 'package:flutter/material.dart';

import '../controllers/task_controller.dart';
import '../models/task_model.dart';

class TaskPage extends StatelessWidget {
  TaskPage({super.key});

  final TaskController controller = TaskController();

  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = controller.getTasks();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Task List"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: tasks.length,

        itemBuilder: (context, index) {
          TaskModel task = tasks[index];

          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              leading: CircleAvatar(child: Text(task.priority.toString())),

              title: Text(task.title),

              subtitle: Text(task.isCompleted ? "Completed" : "Pending"),

              trailing: Icon(
                task.isCompleted ? Icons.check_circle : Icons.pending,

                color: task.isCompleted ? Colors.green : Colors.orange,
              ),
            ),
          );
        },
      ),
    );
  }
}

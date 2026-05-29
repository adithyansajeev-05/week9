import '../models/task_model.dart';

class TaskController {
  // Simulated API Response
  final List<Map<String, dynamic>> apiResponse = [
    {"title": "Learn Flutter", "isCompleted": false, "priority": 1},
    {"title": "Build Todo App", "isCompleted": true, "priority": 2},
    {"title": "Practice API", "isCompleted": false, "priority": 3},
  ];

  // Convert API JSON → List<TaskModel>
  List<TaskModel> getTasks() {
    return apiResponse.map((taskJson) => TaskModel.fromJson(taskJson)).toList();
  }
}

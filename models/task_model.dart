class TaskModel {
  String title;
  bool isCompleted;
  int priority;

  TaskModel({
    required this.title,
    required this.isCompleted,
    required this.priority,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      title: json['title'],
      isCompleted: json['isCompleted'],
      priority: json['priority'],
    );
  }

  Map<String, dynamic> toJson() {
    return {"title": title, "isCompleted": isCompleted, "priority": priority};
  }
}

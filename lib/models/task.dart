import 'package:flutter/cupertino.dart';

import 'package:sje_mobile_app/models/user.dart';

class Task {
  String name;
  String assigner;
  List<User> assignedTo;
  DateTime dueDate;
  Color priority;
  Task(
      {required this.name,
      required this.assigner,
      required this.assignedTo,
      required this.dueDate,
      required this.priority});
}

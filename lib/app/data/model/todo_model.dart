
import 'package:hive_ce/hive.dart';

part 'adapters/todo_model.adapters.dart';

@HiveType(typeId: 0) // هر مدل باید typeId یکتا داشته باشه
class TodoModel {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String decoration;

  TodoModel({required this.title, required this.decoration});
}

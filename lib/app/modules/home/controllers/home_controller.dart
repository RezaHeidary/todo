import 'package:flutter_application_1/app/data/model/todo_model.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';

class HomeController extends GetxController {
  var box = Hive.box<TodoModel>('todos');
  var todos = <TodoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
todos.value = box.values.toList().reversed.toList();


 }
}

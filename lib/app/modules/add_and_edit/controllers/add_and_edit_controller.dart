import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/data/model/todo_model.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';

class AddAndEditController extends GetxController {
  String title = Get.arguments ?? 'Add';

  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();

  addTodo() async {
    if (titleTextEditingController.text.isEmpty ||
        descriptionTextEditingController.text.isEmpty) {
      Get.snackbar('Error', 'Title and description cannot be empty');
      return;
    } else {
      var box = Hive.box<TodoModel>('todos');

      var person = TodoModel(
        title: titleTextEditingController.text,
        decoration: descriptionTextEditingController.text,
      );

      box
          .add(person)
          .then((value) {
            Get.snackbar(title, 'message added successfully');
          })
          .catchError((error) {
            Get.snackbar('Error', 'Failed to add message: $error');
          });
    }
    Get.back();
  }
}

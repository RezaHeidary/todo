import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/data/model/todo_model.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';

class AddAndEditController extends GetxController {
  String appBarTitle = Get.arguments[0] ?? 'Add';

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
            Get.snackbar(appBarTitle, 'message added successfully');
          })
          .catchError((error) {
            Get.snackbar('Error', 'Failed to add message: $error');
          });
    }
    Get.back(result: true);
  }

  editTodo() async {
    if (titleTextEditingController.text.isEmpty ||
        descriptionTextEditingController.text.isEmpty) {
      Get.snackbar('Error', 'Title and description cannot be empty');
      return;
    } else {
      var box = Hive.box<TodoModel>('todos');

      var index = Get.arguments[3];

      var person = TodoModel(
        title: titleTextEditingController.text,
        decoration: descriptionTextEditingController.text,
      );

      box
          .putAt(index, person)
          .then((value) {
            Get.snackbar(appBarTitle, 'message edited successfully');
          })
          .catchError((error) {
            Get.snackbar('Error', 'Failed to edit message: $error');
          });
    }
    Get.back(result: true);
  }

  initForEdit() {
    titleTextEditingController.text = Get.arguments[1] ?? ' ';
    descriptionTextEditingController.text = Get.arguments[2] ?? ' ';
  }

  @override
  void onInit() {
    super.onInit();
    initForEdit();
  }
}

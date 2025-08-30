import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_and_edit_controller.dart';

class AddAndEditView extends GetView<AddAndEditController> {
  const AddAndEditView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;
    return Scaffold(
      appBar: AppBar(title: Text(controller.title), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: controller.titleTextEditingController,
                decoration: InputDecoration(labelText: 'title'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: controller.descriptionTextEditingController,
                maxLines: 7,
                decoration: InputDecoration(labelText: 'description'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
              ),
              onPressed: () {
           controller.addTodo();
              },
              child: Text('Save', style: theme.textTheme.labelMedium),
            ),
          ],
        ),
      ),
    );
  }
}

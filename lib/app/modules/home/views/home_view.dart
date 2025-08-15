import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Todo List'), centerTitle: true),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            right: 10.0,
            left: 10.0,
            top: 10,
            bottom: index == 9 ? 60 : 5,
          ),
          child: Card(
            child: ListTile(
              onTap: () {
                Get.toNamed(Routes.ADD_AND_EDIT,arguments: 'Edit');
              },
              title: Text('Todo Item $index'),
              subtitle: const Text('This is a todo item description.'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add action
          Get.toNamed(Routes.ADD_AND_EDIT,arguments: 'Add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: const Text('My Todo List'), centerTitle: true),
        body: ListView.builder(
          itemCount: controller.todos.length,
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
                  Get.toNamed(Routes.ADD_AND_EDIT, arguments: 'Edit');
                },
                title: Text(controller.todos[index].title),
                subtitle: Text(controller.todos[index].decoration),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    int realIndex = controller.box.length - 1 - index;
                    controller.box.deleteAt(realIndex);
                    controller.todos.removeAt(index);
                    
                  },
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Handle add action
            Get.toNamed(Routes.ADD_AND_EDIT, arguments: 'Add');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

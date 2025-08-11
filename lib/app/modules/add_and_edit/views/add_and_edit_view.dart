import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_and_edit_controller.dart';

class AddAndEditView extends GetView<AddAndEditController> {
  const AddAndEditView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddAndEditView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddAndEditView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

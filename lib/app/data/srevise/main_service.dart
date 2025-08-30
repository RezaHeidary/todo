import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/data/model/todo_model.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

class MatrialAppService extends GetxService {
  Future getInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    //     await Hive.initFlutter();
    // await Hive.openBox('myBox');

    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    Hive.registerAdapter(TodoModelAdapter());
    await Hive.openBox<TodoModel>('todos');
    Get.log('Hive initialized and box opened');
  }
}

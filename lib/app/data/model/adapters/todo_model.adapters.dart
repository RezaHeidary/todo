part of '../todo_model.dart';



class TodoModelAdapter extends TypeAdapter<TodoModel> {
  @override
  final int typeId = 0;

  @override
  TodoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoModel(
      title: fields[0] as String,
      decoration: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TodoModel obj) {
    writer
      ..writeByte(2) // تعداد فیلدها
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.decoration);
  }
}
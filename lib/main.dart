import 'package:alumni/app/app.dart';
import 'package:alumni/core/storage/local_storage.dart';
import 'package:flutter/material.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp(const MainApp());
}



import 'package:flutter/material.dart';
import 'package:sayansir/screens/image.picker.test.here.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sayan sir task",
      // home: GridviewDart(),
      home: ImagePickerTestHere(),
      // home: DashboardPage(),
    );
  }
}

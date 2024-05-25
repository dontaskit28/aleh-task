import 'package:ale_hospital_task/utils/theme.dart';
import 'package:ale_hospital_task/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ALE Hospital Task',
      theme: AppTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: const CustomBottomBar(),
    );
  }
}

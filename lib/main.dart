import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/view/widgets/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(
          background: backgroundColor,
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: MainPageWidgets(),
    );
  }
}

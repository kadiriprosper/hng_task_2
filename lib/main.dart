import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_task_2/view/cv_view_page.dart';

void main() {
  runApp(const MainApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromARGB(255, 255, 212, 248),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 212, 248),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple.shade900,
          foregroundColor: Colors.white,
        ),
      ),
      title: 'HNG_Task 2',
      home: const CvViewPage(),
    );
  }
}

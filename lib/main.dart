import 'package:flutter/material.dart';
import 'screens/main_page.dart';
import 'screens/register.dart';
import 'screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Register(),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        'main_page': (context) => const MainPage(),
        'register': (context) => Register(),
      }
    );
  }
}
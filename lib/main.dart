import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_2/models/db_manager.dart';
import 'package:task_management_2/models/task_manager.dart';
import 'package:task_management_2/screens/login_screen.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // TODO 4: Add Provider package
    // TODO 6: Adding TaskManager sebagai provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskManager(),
        ),
        // TODO :
        ChangeNotifierProvider(
          create: (context) => DbManager(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Management',
        // TODO 26: Mengganti home menjadi routes
        routes: {
          '/': (context) => const LoginScreen(),
          '/taskScreen': (context) => const TaskScreen(),
        },
      ),
    );
  }
}

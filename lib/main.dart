import 'package:flutter/material.dart';
import 'package:hello_world/presentation/pages/form_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.deepPurple)),
      home: const FormPage(),
    );
  }
}

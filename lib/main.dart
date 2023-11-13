import 'package:dash_board/view/pages/main_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

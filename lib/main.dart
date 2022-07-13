import 'package:easy_manager/helper/customer_box.dart';
import 'package:easy_manager/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

late CustomerBox customerBox;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  customerBox = await CustomerBox.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

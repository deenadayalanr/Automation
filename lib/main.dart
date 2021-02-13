import 'package:building_automation/register_page.dart';
import 'package:building_automation/classroom.dart';
import 'package:building_automation/fan_light.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:building_automation/block_page.dart';
import 'package:building_automation/floor_screen.dart';
import 'package:flutter/material.dart';
// import 'package:building_automation/floor_screen.dart';
// import 'package:building_automation/classroom.dart';
// import 'package:building_automation/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Register(),
      // home: Login(),
      // home: FloorScreen(),
      // home: ClassRoom(),
      // home: BlockPage(),
      initialRoute: '/',
      routes: {
        '/': (context) =>BlockPage(),
        // '/': (context) =>FanLight(),
      '/floor': (context) => FloorScreen(),
      '/class': (context) => ClassRoom(),
      // '/academic': (context) => AcademicBlockFloor()
      },
      // home: BlockPage(),
    );
  }
}

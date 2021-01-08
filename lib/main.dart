import 'package:flutter/material.dart';
import 'package:job_listing_app_ui/screens/home/home_screen.dart';
import 'package:job_listing_app_ui/screens/login/login_screen.dart';
import 'package:sp_util/sp_util.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login-page',
      routes: {
        'login-page': (context) => LoginPage(),
        'home-screen': (context) => HomeScreen()
      },
      theme: ThemeData(fontFamily: 'SF Pro Text'),
    );
  }
}

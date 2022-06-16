import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'helpers/constants.dart';

void main() => runApp(const ContactApp());

class ContactApp extends StatelessWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      loginPageTag: (context) => LoginPage(),
      homePageTag: (context) => HomePage()
    };
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        primaryColor: appDarkGrayColor,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
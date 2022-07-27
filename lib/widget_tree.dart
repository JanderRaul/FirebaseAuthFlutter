import 'package:flutter_application_fireauth/auth.dart';
import 'package:flutter_application_fireauth/pages/home_page.dart';
import 'package:flutter_application_fireauth/pages/login_register_page.dart';
import 'package:flutter/material.dart';

class widgetTree extends StatefulWidget {
  const widgetTree({Key? key}) : super(key: key);

  @override
  State<widgetTree> createState() => _widgetTreeState();
}

class _widgetTreeState extends State<widgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return const LoginPage();
          }
        });
  }
}

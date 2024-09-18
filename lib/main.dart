import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thaimerit/constant.dart';
import 'package:thaimerit/providers/auth.dart';
import 'package:thaimerit/screens/auth/login.dart';
import 'package:thaimerit/screens/fullapp.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Auth())],
      child: Consumer<Auth>(
        builder: (context, auth, child) {
          return MaterialApp(
              // home: auth.isAuth ? FullAppScreen() : LoginScreen(),
              home: LoginScreen(),
              theme: ThemeData(
                fontFamily: Constant.fontStyle,
                primaryColor: Constant.primaryColor,
                accentColor: Constant.accentColor,
              ));
        },
      )));
}

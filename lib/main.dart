import 'package:flutter/material.dart';
import 'package:my_flutter/screens/home_screen.dart';
import 'package:my_flutter/screens/login_screen.dart';
import 'package:my_flutter/screens/notification_screen.dart';
import 'package:my_flutter/screens/profile_screen.dart';

void main() => runApp(MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/profile': (context) =>  Profile(),
        '/notification':(context) => NotificationScreen(),
        '/login':(context)=> LoginScreen()
      },
    ));

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_what/screens/android_screens/chats_detail_page.dart';
import 'package:pr_what/screens/global.dart';
import 'package:pr_what/screens/home_page.dart';
import 'package:pr_what/screens/home_page_ios.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            theme: const CupertinoThemeData(
              brightness: Brightness.light,
            ),
            routes: {
              '/': (context) => const CupertinoHomeScreen(),
            },
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => const HomeScreen(),
              'ChatsDetailsScreen': (context) => const ChatsDetailsScreen(),
            },
          );
  }
}

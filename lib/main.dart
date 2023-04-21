import 'package:flutter/material.dart';
import 'package:riverpd/homeScreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpd/user.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>(
    (ref) => UserNotifier(const User(name: "", age: 0)));

void main() {
  runApp(const ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

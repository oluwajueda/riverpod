import 'package:flutter/material.dart';
import 'package:riverpd/homeScreen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpd/user.dart';
import 'package:http/http.dart' as http;

// Lists of providers

//providers
//Provider
//stateprovider
//statenotifier and statenotifierprovider
//changenotifierprovider
//futureprovider
//streamproider

final fetchUserProvider = FutureProvider((ref) {
  const url = "https://jsonplaceholder.typicode.com/users/1";

  return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
});

final streamProvider = StreamProvider((ref) async* {
  yield [1, 2, 3, 4, 5, 6];
});

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

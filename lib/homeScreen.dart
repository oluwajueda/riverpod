import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpd/main.dart';
import 'package:riverpd/user.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    // ref.read(userProvider.notifier).updateName(value);
    ref.read(userChangeNotifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    // ref.read(userProvider.notifier).updateAge(int.parse(value));
    ref.read(userChangeNotifier).updateAge(int.parse(value));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userChangeNotifier).user;
    // final user = ref.watch(userProvider.select((value) => value.name));

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) => onSubmit(ref, value),
          ),
          TextField(
            onSubmitted: (value) => onSubmitAge(ref, value),
          ),
          Center(
            child: Column(
              children: [Text(user.name), Text(user.age.toString())],
            ),
          )
        ],
      ),
    );
  }
}

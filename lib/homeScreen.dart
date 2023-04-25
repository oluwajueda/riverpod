import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpd/main.dart';
import 'package:riverpd/user.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(fetchUserProvider);

    user.when(
      data: (data) {},
      error: (error, stackTrace) {},
      loading: () {},
    );
    // final user = ref.watch(userProvider.select((value) => value.name));

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [Text(""), Text("")],
            ),
          )
        ],
      ),
    );
  }
}

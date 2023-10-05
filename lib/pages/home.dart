import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).pushNamed("contact",params: {"username":"asdf"});
          },
          child: const Text('Next Page'),
        ),
      ),
    );
  }
}

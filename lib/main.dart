
import 'package:flutter/material.dart';
import 'package:go_router_sample/pages/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var router = MyAppRouter().router;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // routeInformationParser: MyAppRouter().router.routeInformationParser,
      // routerDelegate: MyAppRouter().router.routerDelegate,
      routerConfig: router,
    );
  }
}

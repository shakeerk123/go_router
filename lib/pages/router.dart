// import 'package:fluro/fluro.dart';
// import 'package:fluro_navigation/home.dart';
// import 'package:fluro_navigation/screenone.dart';

// class RouterFluro {
//   static FluroRouter fluroRouter = FluroRouter();
//   static var screenOneHandler = Handler(
//     handlerFunc: (context, parameters) {
//       return MyHomePage();
//     },
//   );
//   static var screenTwoHandler = Handler(
//     handlerFunc: (context, Map<String, dynamic> parameters) {
//       String? param1 = parameters['param1'];
//       return ContactUs(uName: param1!);
//     },
//   );
//   static initRoutes() {
//     fluroRouter.define("/", handler: screenOneHandler);
//     fluroRouter.define("second/:param1",
//         handler: screenTwoHandler, transitionType: TransitionType.fadeIn);
//   }
// }

import 'package:flutter/material.dart';


import 'package:go_router_sample/pages/screenTwo.dart';
import 'package:go_router_sample/pages/screenone.dart';

import 'home.dart';

class MyAppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      name: 'home',
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: MyHomePage(),
        );
      },
    ),
    GoRoute(
      name: 'contact',
      path: '/contact/:username',
      pageBuilder: (context, state) {
        final uname=state.params['username'];
        return  MaterialPage(
          child: ContactUs(uName: uname),
        );
      },
    ),
    GoRoute(
      name: 'pageTwo',
      path: '/pageTwo',
      pageBuilder: (context, state) {
        return const MaterialPage(
          child: ScreenTwo(),
        );
      },
    ),
  ]);
}

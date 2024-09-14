import 'package:flutter/material.dart';
import 'package:flutter_app5/pages/main_screen.dart';
import 'package:flutter_app5/routers/route_names.dart';
import 'package:go_router/go_router.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: RouteNames.mainPage,
        builder: (context, state) {
          return const MainScreen();
        },
      )
    ],
  );
}

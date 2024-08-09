import 'package:flutter/material.dart';
import 'package:rockets/core/utils/app_router.dart';

void main() {
  runApp(const RocketsApp());
}

class RocketsApp extends StatelessWidget {
  const RocketsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice_routing/routes/app_route_constant.dart';
import 'package:practice_routing/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "On Generate Routing",
      onGenerateRoute: AppRoutes.onGenerateRouteForMyApp,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteConstant.homePage,
    );
  }
}

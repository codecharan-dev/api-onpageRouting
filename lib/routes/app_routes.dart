import 'package:flutter/material.dart';
import 'package:practice_routing/pages/api/api_calling.dart';
import 'package:practice_routing/pages/home.dart';
import 'package:practice_routing/pages/profile.dart';
import 'package:practice_routing/routes/app_route_constant.dart';
import 'package:practice_routing/pages/settings.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRouteForMyApp(
      RouteSettings myAppRouteSettings) {
    switch (myAppRouteSettings.name) {
      // home page navigation
      case AppRouteConstant.homePage:
        return MaterialPageRoute(builder: (context) => const Home());
      // profile page navigation
      case AppRouteConstant.profilePage:
        return MaterialPageRoute(builder: (context) => const Profile());
      // settings page navigation
      case AppRouteConstant.settingsPage:
        return MaterialPageRoute(builder: (context) => const Settings());
      // api calling page navigation
      case AppRouteConstant.apiCalling:
        return MaterialPageRoute(builder: (context) => const ApiCalling());
      // default
      default:
    }
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('dummy'),
        ),
        body: const Center(
          child: Text("dummy page"),
        ),
      ),
    );
  }
}

























// import 'package:go_router/go_router.dart';
// import 'package:practice_routing/home.dart';
// import 'package:practice_routing/profile.dart';
// import 'package:practice_routing/settings.dart';

// class AppRoutes {
//  static final GoRouter router = GoRouter(
//     routes: [
//       GoRoute(
//         path: "/",
//         name: "home",
//         builder: (context, state) => const Home(),
//         routes: [
//           GoRoute(
//             path: "profile",
//             name: "profile",
//             builder: (context, state) => const Profile(),
//           ),
//           GoRoute(
//             path: "settings",
//             name: "settings",
//             builder: (context, state) => const Settings(),
//           ),
//         ],
//       ),
//     ],
//   );
// }

import 'package:flutter/material.dart';
import 'package:practice_routing/routes/app_route_constant.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.yellow, shape: BoxShape.circle),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRouteConstant.apiCalling,
                (route) => false,
              );
            },
            child: const Text(
              "Api calling page",
            ),
          ),
          const Text(
            'It is me Settings Page ',
            style: TextStyle(fontSize: 24.0),
          ),
        ],
      ),
    );
  }
}

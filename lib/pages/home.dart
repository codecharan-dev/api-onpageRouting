import 'package:flutter/material.dart';
import 'package:practice_routing/routes/app_route_constant.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            height: 200,
            width: 200,
            color: Colors.pink,
            child: const Center(
              child: Text(
                "This is home page",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // print("i am clicked");
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRouteConstant.profilePage,
                  (route) => true,
                );
              },
              child: const Text(
                "Go to profile page",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

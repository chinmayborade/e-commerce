import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_app2/bottom%20navigation%20bar/home_page.dart';
import 'package:task_app2/pages/page_2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 48),

          //image
          LottieBuilder.network(
              "https://lottie.host/274f33fb-c080-49a2-bbef-46384b784754/htW0P2Q9PC.json"),

          SizedBox(height: 40),

          //text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Get Items Delivered On Your Doorstep",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
          ),

          SizedBox(height: 40),

          //icon
          Center(
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                icon: Icon(Icons.arrow_circle_right_outlined, size: 40)),
          ),
        ],
      ),
    );
  }
}

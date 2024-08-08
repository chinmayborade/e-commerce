import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task_app2/pages/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 48),

          //image
          LottieBuilder.network(
              "https://lottie.host/6f919411-26a5-42ab-9c3d-2c30651469d3/6VrPkDDtpU.json"),

          SizedBox(height: 40),

          //text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Welcome To The One Stop Destination of Shopping",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
          ),

          SizedBox(height: 60),

          //icon
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "Swipe >>>",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ],
      ),
    );
  }
}

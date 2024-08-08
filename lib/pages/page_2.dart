import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 48),

          //image
          LottieBuilder.network(
              "https://lottie.host/bcc32e1a-8380-4114-b185-0c3166545479/gi7RW0dIoV.json"),

          SizedBox(height: 40),

          //text
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Get Great Deals On Selected Items",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
          ),

          SizedBox(height: 40),

          //icon
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

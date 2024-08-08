import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String imageUrl;
  final String brandName;

  const BrandCard({
    required this.imageUrl,
    required this.brandName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              height: 80, // Set a fixed height for brand logos
              width: 80, // Set a fixed width for brand logos
            ),
          ),
          SizedBox(height: 8),
          Text(
            brandName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

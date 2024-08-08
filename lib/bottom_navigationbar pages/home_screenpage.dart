import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app2/brand%20card%20widget/brand_card.dart';

class HomeScreenpage extends StatelessWidget {
  const HomeScreenpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 47),

            // TextField for Search
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Poppins",
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),

            SizedBox(height: 40),

            // New Launches Text
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "New Launches ",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5),
                  Image.network(
                    "https://img.icons8.com/?size=100&id=18515&format=png&color=000000",
                    height: 30,
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Horizontal List of Clothing Products
            Container(
              height: 300, // Set a fixed height for the horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductCard(
                    imageUrl:
                        'https://5.imimg.com/data5/JH/SP/MY-33710583/men-s-blue-shirt.jpg',
                    productName: 'Blue Shirt',
                    price: 29.99,
                  ),
                  ProductCard(
                    imageUrl:
                        'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRYU7eKe8YmtULmjgEx6jhN6EP4eVOj8mDwW7AML6JybubDPUyQnEMepHFvXZrjMmgn3brmY8k18coouS3MHOQyUTovrAv1fDagnBicmuc',
                    productName: 'Black Pants',
                    price: 39.99,
                  ),
                  ProductCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRdJDlV9i-tjyfJHYT-VLYLJhj1eSooVfAFAA1lsJsTMF_uFyHwySOkfrwKMrh0pNedtO_M3G4rlKnZluiC8KorzthWw6dTVn9-o2faWxQmEVeMDdr6HlBc',
                    productName: 'Red Dress',
                    price: 49.99,
                  ),
                  ProductCard(
                    imageUrl:
                        'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSa3Io_zqwc0AomKCvkvrzjuZusqwuVS1-H-pbJROLTldUIvVYxFhLc5iwi-BJLbeV_vq5urIPBFnwoZ2jV19RIWKErK0LOSIXsM0zHr_2h9qeXtNiVCJTxRQ',
                    productName: 'Leather Belt',
                    price: 19.99,
                  ),
                ],
              ),
            ),

            SizedBox(height: 43),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Top Brands To Choose From",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                //icon
                Image.network(
                  "https://img.icons8.com/?size=100&id=runYFO7RVbcD&format=png&color=000000",
                  height: 30,
                )
              ],
            ),

            //Brands
            // Grid View for Brands
            Container(
              height: 200, // Set a fixed height for the grid
              child: GridView.count(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: EdgeInsets.all(12.0),
                children: [
                  BrandCard(
                    imageUrl:
                        'https://play-lh.googleusercontent.com/ODwuO86g8lbgiWbhRLclRnEstD0WAhlXYW9Me2rY2huXr7H0NYMAKUtwami7uyREN9Q',
                    brandName: 'AJIO',
                  ),
                  BrandCard(
                    imageUrl:
                        'https://images.indianexpress.com/2021/01/myntra.png',
                    brandName: 'Myntra',
                  ),
                  BrandCard(
                    imageUrl:
                        'https://logowik.com/content/uploads/images/918_adidas.jpg',
                    brandName: 'Adidas',
                  ),
                  BrandCard(
                    imageUrl:
                        'https://i.pinimg.com/originals/93/ab/d7/93abd7184b985e3b803fa5b70fe5fa55.png',
                    brandName: 'Emperio Armani',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final double price;

  const ProductCard({
    required this.imageUrl,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140, // Set a fixed width for each product card
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              productName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

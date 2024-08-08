import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy user data
    final String name = "John Doe";
    final String email = "johndoe@example.com";
    final String phone = "123-456-7890";
    final String address = "123 Main St, Anytown, USA";

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),

            // Profile Picture
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg', // Placeholder image
                ),
              ),
            ),

            SizedBox(height: 20),

            // User Information
            Text(
              "Name: $name",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Email: $email",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              "Phone: $phone",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            Text(
              "Address: $address",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 50),

            // Edit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to edit profile page or show a dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfilePage(),
                    ),
                  );
                },
                child: Text("Edit Profile"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Edit Profile Page
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Center(
        child: Text("Edit Profile Page (Dummy)"),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PersonPage(),
  ));
}

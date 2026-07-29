import 'package:ecommerce/screens/details/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("assets/men.png"),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Men",
                        style: GoogleFonts.gabarito(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(Icons.arrow_downward),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xFF8E6CEF),
                  child: Icon(Icons.shopping_bag, color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.withValues(alpha: 0.15),
                hintText: "Search",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Catagories",
                  style: GoogleFonts.gabarito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.gabarito(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(
                              productData[index]['image'],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(productData[index]['name']),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Selling",
                  style: GoogleFonts.gabarito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.gabarito(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

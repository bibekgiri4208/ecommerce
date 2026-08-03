import 'package:ecommerce/screens/data/product_data.dart';
import 'package:ecommerce/screens/detail/cart_screen.dart';
import 'package:ecommerce/screens/home/dashboard_screen.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DashBoardScreen(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.grey.withValues(
                              alpha: 0.55,
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.grey.withValues(alpha: 0.55),
                          child: Icon(
                            Icons.favorite_outline,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),

                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: detailData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 180,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              detailData[index]["image"],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Men's Harrington Jacket",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "\$148",
                      style: GoogleFonts.gabarito(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),

                    SizedBox(height: 30),

                    Container(
                      height: 65,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Size",
                              style: GoogleFonts.gabarito(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "S",
                                  style: GoogleFonts.gabarito(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 30),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 35,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 65,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Color",
                              style: GoogleFonts.gabarito(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Color(0xFFB3B68B),
                                ),
                                SizedBox(width: 30),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 35,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Container(
                      height: 65,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quantity",
                              style: GoogleFonts.gabarito(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.add_circle_rounded,
                                  size: 35,
                                  color: Color(0xFF8E6CEF),
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "1",
                                  style: GoogleFonts.gabarito(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.remove_circle_rounded,
                                  size: 35,
                                  color: Color(0xFF8E6CEF),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Shipping and Returns",
                      style: GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Free standard shipping and free 60-day returns"),

                    SizedBox(height: 20),

                    Text(
                      "Reviews",
                      style: GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "4.5 Ratings",
                      style: GoogleFonts.gabarito(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("213 Reviews"),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                "assets/alexmorgan1.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Alex Morgan",
                              style: GoogleFonts.gabarito(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.deepPurpleAccent),
                            Icon(Icons.star, color: Colors.deepPurpleAccent),
                            Icon(Icons.star, color: Colors.deepPurpleAccent),
                            Icon(Icons.star, color: Colors.grey),
                            Icon(Icons.star, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "12days Ago",
                      style: GoogleFonts.gabarito(fontWeight: FontWeight.w500),
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                "assets/alexmorgan2.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Alex Morgan",
                              style: GoogleFonts.gabarito(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.deepPurpleAccent),
                            Icon(Icons.star, color: Colors.deepPurpleAccent),
                            Icon(Icons.star, color: Colors.deepPurpleAccent),
                            Icon(Icons.star, color: Colors.grey),
                            Icon(Icons.star, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "12days Ago",
                      style: GoogleFonts.gabarito(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CartScreen()),
                );
              },
              child: Container(
                width: double.maxFinite,
                color: Colors.white,
                child: Center(
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFF8E6CEF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$148",
                            style: GoogleFonts.gabarito(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Add to Bag",
                            style: GoogleFonts.gabarito(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

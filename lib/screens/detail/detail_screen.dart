import 'package:ecommerce/screens/data/product_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.grey.withValues(alpha: 0.55),
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
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
                      Text("Size", style: GoogleFonts.gabarito(fontSize: 20)),
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
                          Icon(Icons.keyboard_arrow_down_rounded, size: 35),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

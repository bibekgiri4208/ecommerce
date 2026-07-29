import 'package:ecommerce/screens/data/product_data.dart';
import 'package:ecommerce/screens/home/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => DashBoardScreen()),
                  );
                },
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey.withValues(alpha: 0.55),
                  child: Icon(Icons.arrow_back, size: 25, color: Colors.white),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Shop by Categories",
                style: GoogleFonts.gabarito(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categoriesData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15),

                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                              categoriesData[index]["image"],
                            ),
                          ),

                          SizedBox(width: 20),

                          Text(
                            categoriesData[index]["name"],
                            style: GoogleFonts.gabarito(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

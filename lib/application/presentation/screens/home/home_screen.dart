import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: TextStyle(color: kBlack),
                decoration: InputDecoration(
                  prefixIcon: Icon(EvaIcons.search_outline),
                  filled: true,
                  fillColor: kGrey,
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              kHeight20,
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.6,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2),
                itemCount: 10, // Replace with the actual item count
                itemBuilder: (context, index) {
                  // You can replace the following Container with your actual grid item widget
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 7, right: 10, top: 10, bottom: 5),
                            child: Container(
                                height: sWidth * 0.5,
                                color: kGrey, // Replace with your desired color
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image.network(
                                      "https://assets.adidas.com/images/w_600,f_auto,q_auto/f81a93942800473fa6cbaf7b00b2d48b_9366/Campus_00s_Shoes_Blue_H03471_01_standard.jpg"),
                                )),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: kWhite,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Iconsax.edit_outline)),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Adidas Campus Shoe",
                          textAlign: TextAlign.start,
                          style: roboto(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "₹5656",
                            style: roboto(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(kRadius5),
                                color: kGreen),
                            height: 20,
                            width: 30,
                            child: Text(
                              "50%",
                              textAlign: TextAlign.center,
                              style: roboto(
                                  color: kWhite, fontWeight: FontWeight.bold),
                            ),
                          ),
                          kWidth10,
                        ],
                      ),
                    ],
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

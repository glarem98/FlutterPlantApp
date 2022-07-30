// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:glarefirst/constants.dart';

import 'header_with_searchbox.dart';
import 'recommand_plants.dart';
import 'title_wwith_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          RecommendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plans', press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturePlanCard(
                  image: 'assets/images/bottom_img_1.png',
                  press: () {},
                ),
                FeaturePlanCard(
                  image: 'assets/images/bottom_img_2.png',
                  press: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FeaturePlanCard extends StatelessWidget {
  const FeaturePlanCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      // onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: gDefaultPadding,
            top: gDefaultPadding / 2,
            bottom: gDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )),
      ),
    );
  }
}

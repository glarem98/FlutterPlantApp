import 'package:flutter/material.dart';
import 'package:glarefirst/constants.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommandPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samanta',
            country: 'Russia',
            price: 440,
            press: () {},
          ),
          RecommandPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 440,
            press: () {},
          ),
          RecommandPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Samanta',
            country: 'Russia',
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommandPlantCard extends StatelessWidget {
  const RecommandPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: gDefaultPadding,
          top: gDefaultPadding / 2,
          bottom: gDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            // onTap: press,
            child: Container(
              padding: EdgeInsets.all(gDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: gPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$title\n'.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: gPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: gPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

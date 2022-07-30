import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glarefirst/constants.dart';
import 'package:glarefirst/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: gPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}

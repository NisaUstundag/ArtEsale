import 'package:E_TICARET/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:E_TICARET/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/backward-solid.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/magnifying-glass-solid.svg",
            colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            height: 24.0, // Boyutu ayarladım
            width: 24.0,  // Boyutu ayarladım
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart-plus-solid.svg",
            colorFilter: const ColorFilter.mode(kTextColor, BlendMode.srcIn),
            height: 24.0, // Boyutu ayarladım
            width: 24.0,  // Boyutu ayarladım
          ),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPadding / 3), // Düzeltilmiş padding
      ],
    );
  }
}

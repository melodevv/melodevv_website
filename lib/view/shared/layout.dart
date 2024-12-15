import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melodevv_website/responsive.dart';
import 'package:melodevv_website/view/hero/hero_section.dart';
import 'package:melodevv_website/view/navbar/navbar.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: SvgPicture.asset('assets/images/bg_radiant.svg'),
          ),
          BackgroundIcons(
            topOffset: !Responsive.isMobile(context) ? 90.0 : 110.0,
            leftOffset: 190.0,
            size: 110.23,
            assetName: 'assets/images/linux.png',
          ),
          BackgroundIcons(
            topOffset: !Responsive.isMobile(context) ? 10.0 : 70.0,
            leftOffset: !Responsive.isMobile(context) ? -290.0 : -180.0,
            size: 128.89,
            assetName: 'assets/images/csharp.png',
          ),
          const BackgroundIcons(
            topOffset: -190.0,
            leftOffset: -130.0,
            size: 109.51,
            assetName: 'assets/images/git.png',
          ),
          BackgroundIcons(
            topOffset: !Responsive.isMobile(context) ? -90.0 : -190,
            leftOffset: !Responsive.isMobile(context) ? 430.0 : 330.0,
            size: 107.0,
            assetName: 'assets/images/python.png',
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            width: MediaQuery.of(context).size.width,
            child: const NavBar(),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            width: MediaQuery.of(context).size.width,
            child: const HeroSection(),
          ),
        ],
      ),
    );
  }
}

class BackgroundIcons extends StatelessWidget {
  const BackgroundIcons({
    super.key,
    required this.leftOffset,
    required this.topOffset,
    required this.assetName,
    required this.size,
  });

  final double leftOffset;
  final double topOffset;
  final String assetName;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2 + topOffset,
      left: MediaQuery.of(context).size.width / 2 - leftOffset,
      child: Image.asset(
        assetName,
        width: size,
      ),
    );
  }
}

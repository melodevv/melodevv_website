import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GradientText(
              'Hello there 😎, I\'m',
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
              colors: const [
                Color.fromRGBO(156, 131, 255, 1),
                Color.fromRGBO(255, 144, 81, 1)
              ],
            ),
            const Text(
              'Tlhokomelo Direko!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                height: 0.9,
                letterSpacing: -3.0,
                fontSize: 65.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              'Software Developer and Designer',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(201, 201, 201, 1),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: 150.0,
              height: 1.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(156, 131, 255, 1),
                  Color.fromRGBO(255, 144, 81, 1)
                ]),
              ),
            ),
            const SizedBox(height: 10.0),
            const SizedBox(
              width: 582.0,
              child: Text(
                'Passionate Software Enginer with a focus on ASP.NET and Flutter Development, dedicated to creating elegant and user-friendly web and mobile applications.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

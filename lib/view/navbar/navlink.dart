import 'package:flutter/material.dart';

class NavLink extends StatelessWidget {
  const NavLink({
    super.key,
    required this.text,
    required this.filled,
  });

  final String text;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: filled ? Colors.white : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        side: BorderSide(
          color:
              filled ? Colors.white : const Color.fromRGBO(154, 154, 154, 1.0),
        ),
      ),
      hoverElevation: 10.0,
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 6.0),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 13.0,
            color: filled ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}

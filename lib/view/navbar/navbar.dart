import 'package:flutter/material.dart';
import 'package:melodevv_website/responsive.dart';
import 'package:melodevv_website/view/navbar/navlink.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.amber,
            width: 97,
            height: 40,
          ),
          if (!Responsive.isMobile(context))
            const Row(
              children: [
                NavLink(
                  text: 'About me',
                  filled: false,
                ),
                SizedBox(width: 18.0),
                NavLink(
                  text: 'Experience',
                  filled: false,
                ),
                SizedBox(width: 18.0),
                NavLink(
                  text: 'Projects',
                  filled: false,
                ),
                SizedBox(width: 18.0),
                NavLink(
                  text: 'Contact',
                  filled: true,
                ),
              ],
            )
          else
            IconButton(
              onPressed: () {},
              hoverColor: Colors.red,
              icon: const Icon(Icons.menu),
            )
        ],
      ),
    );
  }
}

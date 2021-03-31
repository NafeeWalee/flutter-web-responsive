import 'package:flutter/material.dart';
import 'package:flutter_web/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: (!isInspect(context))? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 50,
            ),

            SizedBox(width: 10),

            Text(
              "Peta Beauty",
              style: GoogleFonts.reenieBeanie(
                  fontSize: 18
              ),
            ),

            Spacer(),

            if (!isMobile(context))
              Row(
                children: [
                  NavItem(
                    title: 'Home',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Donate',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Contact Us',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Login',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Shop',
                    tapEvent: () {},
                  ),
                ],
              ),

            if (isMobile(context))
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  }
              )
          ],
        ):  IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            }
        ),
      ),
    );
  }
}
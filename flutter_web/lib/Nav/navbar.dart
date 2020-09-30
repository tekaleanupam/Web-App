import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'PORTFOLIO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0XFF1b1e44),
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(
                        0XFF1b1e44,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    'Projects',
                    style: TextStyle(
                      color: Color(0XFF1b1e44),
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  onPressed: () {},
                  textColor: Color(0XFF1b1e44),
                  color: Colors.blue,
                  child: Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                  ),
                  onPressed: () {},
                  textColor: Color(0XFF1b1e44),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Anurag Tekale',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'Projects',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedItem = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0XFF1D1E3C),
                fontWeight:
                    index == selectedItem ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                color: index == selectedItem
                    ? Color(0XFFFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Column(
              children: [
                // NAVIGATION SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(
                          title: 'Guide',
                          index: 0,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Pricing',
                          index: 1,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Team',
                          index: 2,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Stories',
                          index: 3,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/btn_account.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),
                // END OF NAVIGATION
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'assets/images/illustration.png',
                  height: 550,
                ),
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/icon_down.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

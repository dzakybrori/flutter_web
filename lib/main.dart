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

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Guide',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0XFF1D1E3C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Color(0XFFFE998D),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Pricing',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0XFF1D1E3C),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Team',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0XFF1D1E3C),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Stories',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Color(0XFF1D1E3C),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
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

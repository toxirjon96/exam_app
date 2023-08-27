import 'package:exam_app/exam_app_library.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppleProducts extends StatelessWidget {
  final Color mainColor;
  final Color subColor;
  final Color additionalColor;

  const AppleProducts({
    super.key,
    required this.changeScreen,
    required this.mainColor,
    required this.subColor,
    required this.additionalColor,
  });

  final Function(String state) changeScreen;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: DefaultTabController(
        length: 3,
        initialIndex: 2,
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: mainColor,
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.apple,
                          color: subColor,
                          size: 40,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: TabBar(
                          indicatorColor: subColor,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: [
                            Tab(
                              child: Text(
                                "IPhones",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "MacBooks",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Watches",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_outlined,
                            color: subColor,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: subColor,
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.search,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: TabBarView(
                        children: [
                          const IPhones(),
                          const MacBooks(),
                          Watches(
                            subColor: subColor,
                            mainColor: mainColor,
                            additionalColor: additionalColor,
                            changeScreen: changeScreen,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

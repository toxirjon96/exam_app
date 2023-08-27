import 'package:exam_app/exam_app_library.dart';
import 'package:google_fonts/google_fonts.dart';

class Watches extends StatelessWidget {
  final Color subColor;
  final Color mainColor;
  final Color additionalColor;
  final Function(String state) changeScreen;

  const Watches({
    super.key,
    required this.mainColor,
    required this.subColor,
    required this.additionalColor,
    required this.changeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.topLeft,
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 5,
        radius: const Radius.circular(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Apple",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: additionalColor,
                ),
              ),
              Text(
                "Watches",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElementList(
                changeScreen: changeScreen,
                elementName: "Series 3",
                description:
                    "The Apple watch series 3 is designed for people who want to keep their fitness game on point.",
                price: 295.0,
                image: Image.asset(
                  "assets/images/series-5.png",
                ),
                subColor: subColor,
                mainColor: mainColor,
                additionalColor: additionalColor,
              ),
              ElementList(
                changeScreen: changeScreen,
                elementName: "Series 5",
                description:
                    "The Apple watch series 3 is designed for people who want to keep their fitness game on point.",
                price: 315.0,
                image: Image.asset(
                  "assets/images/series-3.png",
                ),
                subColor: subColor,
                mainColor: mainColor,
                additionalColor: additionalColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:exam_app/exam_app_library.dart';
import 'package:google_fonts/google_fonts.dart';

class ElementList extends StatelessWidget {
  final String elementName;
  final String description;
  final double price;
  final Color subColor;
  final Color mainColor;
  final Color additionalColor;
  final Image image;
  final Function(String state) changeScreen;

  const ElementList({
    super.key,
    required this.elementName,
    required this.description,
    required this.price,
    required this.subColor,
    required this.mainColor,
    required this.additionalColor,
    required this.image,
    required this.changeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeScreen("single");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            elementName,
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          image,
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 10,
              color: additionalColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                "\$$price",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: Icon(
                  Icons.add,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

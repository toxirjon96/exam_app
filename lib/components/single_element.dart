import 'package:exam_app/exam_app_library.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleElement extends StatefulWidget {
  final Color mainColor;
  final Color subColor;
  final Color additionalColor;

  const SingleElement({
    super.key,
    required this.changeScreen,
    required this.mainColor,
    required this.subColor,
    required this.additionalColor,
  });

  final Function(String state) changeScreen;

  @override
  State<StatefulWidget> createState() => _SingleElementState();
}

class _SingleElementState extends State<SingleElement> {
  bool emptyHeart = false;
  Icon? heartIcon;

  @override
  Widget build(BuildContext context) {
    if (!emptyHeart) {
      heartIcon = Icon(
        CupertinoIcons.heart,
        color: widget.subColor,
        size: 20,
      );
    } else {
      heartIcon = const Icon(
        CupertinoIcons.heart_fill,
        color: Colors.red,
        size: 20,
      );
    }
    void likeState() {
      setState(() {
        emptyHeart = !emptyHeart;
      });
    }

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      widget.changeScreen("main");
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: widget.mainColor,
                      size: 40,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: likeState,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: const CircleBorder(),
                      backgroundColor: widget.mainColor,
                    ),
                    child: heartIcon,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/series-3.2.png",
                      height: 300,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: widget.mainColor,
                        width: 46,
                        height: 5,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: widget.additionalColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: widget.additionalColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: widget.additionalColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Series 3",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: widget.mainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "The Apple watch series 3 is designed for people who want to keep their fitness game on point.",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: widget.additionalColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$295.0",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: widget.mainColor,
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
                          color: widget.mainColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      backgroundColor: widget.mainColor,
                    ),
                    child: Text(
                      "PROCEED TO BUY",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: widget.subColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2.0, color: widget.mainColor),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 15,
                      ),
                      backgroundColor: widget.subColor,
                    ),
                    child: Text(
                      "ADD TO CART",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: widget.mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

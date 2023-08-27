import 'package:exam_app/exam_app_library.dart';
import 'package:flutter/cupertino.dart';

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
        CupertinoIcons.heart_solid,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/series-3.2.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

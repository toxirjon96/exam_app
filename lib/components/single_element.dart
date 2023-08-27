import 'package:exam_app/exam_app_library.dart';

class SingleElement extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
                      changeScreen("main");
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: mainColor,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 8,
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}

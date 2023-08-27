import 'package:exam_app/exam_app_library.dart';

class AppleStoreMainUI extends StatefulWidget {
  const AppleStoreMainUI({super.key});

  @override
  State<StatefulWidget> createState() => _AppleStoreMainUIState();
}

class _AppleStoreMainUIState extends State<AppleStoreMainUI> {
  final mainColor = const Color(0xFF030303);
  final subColor = const Color(0xFFFAFBFA);
  final additionalColor = const Color(0xFF777070);

  String activeScreenName = "main";
  Widget? activeScreen;

  @override
  Widget build(BuildContext context) {
    void changeScreen(String state) {
      setState(() {
        activeScreenName = state;
      });
    }

    if (activeScreenName == "main") {
      activeScreen = AppleProducts(
        changeScreen: changeScreen,
        mainColor: mainColor,
        subColor: subColor,
        additionalColor: additionalColor,
      );
    } else if (activeScreenName == "single") {
      activeScreen = SingleElement(
        changeScreen: changeScreen,
        mainColor: mainColor,
        additionalColor: additionalColor,
        subColor: subColor,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Apple Store",
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}

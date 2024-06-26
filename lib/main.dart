import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:project_news/router.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 30.0
    ..animationDuration = const Duration(milliseconds: 500)
    ..radius = 10.0
    ..progressWidth = 0.1
    ..progressColor = Colors.blue[700]
    ..backgroundColor = Colors.grey[100]
    ..indicatorColor = Colors.blue[700]
    ..textColor = Colors.blue[700]
    ..fontSize = 12
    ..maskColor = Colors.grey[100]
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routers().init(),
      title: 'News App',
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:comunidadefreiriana/screens/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashScreenController controller = SplashScreenController();
  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    controller.startApp(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'lib/assets/images/splash.png',
              height: size.height * 1,
              width: size.width * 1,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:comunidadefreiriana/image_control/edit_image.dart';
import 'package:comunidadefreiriana/screens/cadastro/cadastro.dart';
import 'package:comunidadefreiriana/screens/home/home_screen.dart';
import 'package:comunidadefreiriana/screens/mapa/maps.dart';
import 'package:comunidadefreiriana/screens/paulofreire/paulo_freire.dart';
import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      home: const SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        PauloFreire.id: (context) => const PauloFreire(),
        SolicitarCadastro.id: (context) => const SolicitarCadastro(),
        Maps.id: (context) => const Maps(),
        EditImageScreen.id: (context) => const EditImageScreen(),
      },
    );
  }
}

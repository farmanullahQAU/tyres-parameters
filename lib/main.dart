import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parametric_market_app/constants/theme.dart';
import 'package:parametric_market_app/pages.dart';
import 'package:parametric_market_app/constants/text_styles.dart';
import 'binder.dart';
import 'route_names.dart';
import 'screens/login/login_view.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const Self());
}

class Self extends StatelessWidget {
  const Self({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      builder: BotToastInit(), //1. call BotToastInit
      navigatorObservers: [BotToastNavigatorObserver()],
    

      initialBinding: Binder(),
      title: "Tie Tracker",

      initialRoute: RouteNames.SPLASH,
      getPages: pages,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      theme: AppTheme.orangeTheme,

      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('images/logo.png'),
        duration: 2000,
        splashIconSize: 200,
        nextScreen: Loginview());
  }
}

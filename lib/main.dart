import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: AnimatedSplashScreen(
          splash: Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset('images/tyre.svg',width: 100,),
              Positioned(top:60,child: SvgPicture.asset('images/rim.svg',width: 120,)),
    
            ],
          ),
          duration: 2000,
          splashIconSize: 200,
          nextScreen: Loginview()),
    );
  }
}

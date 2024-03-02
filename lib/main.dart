import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/material.dart';
//import "package:get/get.dart" as getN;
import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      enabled: false,
      builder: (context) => /* getN.GetMaterialApp*/

          MaterialApp.router(
              theme: ThemeData.dark().copyWith(
                  // scaffoldBackgroundColor: kColorScaffold,
                  // textTheme: const TextTheme(
                  //   bodyMedium: TextStyle(color: Colors.blue),
                  //   bodyLarge: TextStylesFont.textStylesboyLarg,
                  // ),

                  textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(
                ThemeData.dark().textTheme,
              )),
              debugShowCheckedModeBanner: false,
              //   home: const SplashView()
              routerConfig: AppRouter.goRouter),
    );
  }
}

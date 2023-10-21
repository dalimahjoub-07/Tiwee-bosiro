import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Tiwee/presentation/screens/splash/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff1a1726)
  ));



      runApp(ProviderScope(
        child: MaterialApp(
          themeMode: ThemeMode.system,


          title: "Tiwee",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.soraTextTheme(),
          scaffoldBackgroundColor: const Color(0xff1a1726),),
        home:  const MyApp(),

      ),

      ));
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

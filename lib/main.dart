import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/consts/global_colors.dart';
import 'package:shop/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        theme: ThemeData(
            scaffoldBackgroundColor: lightScafoldColor,
            primaryColor: lightCardColor,
            backgroundColor: lightBackgroundColor,
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: lightIconsColor),
              backgroundColor: lightScafoldColor,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: lightTextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              elevation: 0,
            ),
            iconTheme: IconThemeData(color: lightIconsColor),
            textSelectionTheme: const TextSelectionThemeData(
                cursorColor: Colors.black, selectionColor: Colors.blue),
            cardColor: lightCardColor,
            brightness: Brightness.light,
            colorScheme: ThemeData().colorScheme.copyWith(
                secondary: lightIconsColor, brightness: Brightness.light)),
        home: const MainScreen(),
      ),
    );
  }
}

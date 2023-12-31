import 'package:flutter/material.dart';
import 'package:store_flutter/data/repo/auth_repository.dart';
import 'package:store_flutter/theme.dart';
import 'package:store_flutter/ui/root.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  authRepository.loadAuthInfo();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
        fontFamily: 'Kalameh', color: LightThemeColors.primaryTextColor);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        hintColor: LightThemeColors.secondaryTextColor,
        inputDecorationTheme: InputDecorationTheme(
            border: const OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        LightThemeColors.primaryTextColor.withOpacity(0.1)))),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: LightThemeColors.primaryTextColor),
        scaffoldBackgroundColor: Colors.white,
        snackBarTheme: SnackBarThemeData(
            contentTextStyle: defaultTextStyle.apply(color: Colors.white)),
        textTheme: TextTheme(
            subtitle1: defaultTextStyle.apply(
                color: LightThemeColors.secondaryTextColor),
            bodyText2: defaultTextStyle,
            button: defaultTextStyle,
            caption: defaultTextStyle.apply(
                color: LightThemeColors.secondaryTextColor),
            headline6: defaultTextStyle.copyWith(
                fontWeight: FontWeight.bold, fontSize: 18)),
        colorScheme: const ColorScheme.light(
            primary: LightThemeColors.primaryColor,
            secondary: LightThemeColors.secondaryColor,
            onSecondary: Colors.white,
            surfaceVariant: Color(0xffF5F5F5)),
      ),
      home:  const Directionality(
          textDirection: TextDirection.rtl, child: RootScreen()),
    );
  }
}

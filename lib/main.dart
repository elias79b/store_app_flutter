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

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
        fontFamily: 'Kalameh', color: LightThemeColors.primaryTextColor);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // is not restarted.
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
        ),
      ),
      home:  Directionality(
          textDirection: TextDirection.rtl, child: RootScreen()),
    );
  }
}

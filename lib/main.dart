import 'package:flutter/material.dart';
import 'package:store_flutter/data/product.dart';
import 'package:store_flutter/data/repo/banner_repository.dart';
import 'package:store_flutter/data/repo/product_repository.dart';
import 'package:store_flutter/theme.dart';
import 'package:store_flutter/ui/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    productRepository.getAll(ProductSort.latest).then((value) {
      debugPrint(value.toString());
    }).catchError((e) {
      debugPrint(e.toString());
    });

    bannerRepository.getAll().then((value) {
      debugPrint(value.toString());
    }).catchError((e) {
      debugPrint(e.toString());
    });
    const defaultTextStyle = TextStyle(
        fontFamily: 'Kalameh', color: LightThemeColors.primaryTextColor);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme:  TextTheme(
            subtitle1: defaultTextStyle.apply(color: LightThemeColors.secondaryTextColor),
            button: defaultTextStyle,
            bodyText2: defaultTextStyle,
            caption: defaultTextStyle.apply(color: LightThemeColors.secondaryTextColor),
            headline6: defaultTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          colorScheme: const ColorScheme.light(
            primary: LightThemeColors.primaryColor,
            secondary: LightThemeColors.secondaryColor,
            onSecondary: Colors.white
          )),
      home: const Directionality(
          textDirection: TextDirection.rtl,
          child: HomeScreen()),
    );
  }
}

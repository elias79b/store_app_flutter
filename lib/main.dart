import 'package:flutter/material.dart';
import 'package:store_flutter/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
        fontFamily: 'Kalameh', color: LightThemeColors.primaryTextColor);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme:  TextTheme(
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
          child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'سلا بحنسبجحنسیجبنیسبجن',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

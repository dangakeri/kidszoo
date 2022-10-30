import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidszoo/Provider/theme.dart';
import 'package:kidszoo/ui/splash_screen.dart';
import 'package:provider/provider.dart';
import 'Provider/Theme_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentTheme();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return themeChangeProvider;
        }),
      ],
      child: Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
        return Consumer<DarkThemeProvider>(
            builder: (context, themeData, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Kidszoo',
            theme: Styles.themeData(
              themeChangeProvider.darkTheme,
              context,
            ),
            home: const SplashScreen(),
          );
        });
      }),
    );
  }
}

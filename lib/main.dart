import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/my_manager.dart';
import 'package:the_basics/routing/route.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/services/navigation_service.dart';
import 'package:the_basics/views/layout/layout_template.dart';
import 'package:theme_mode_handler/theme_mode_handler.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeModeHandler(
        manager: MyManager(),
        builder: (ThemeMode themeMode) {
          return MaterialApp(
            themeMode: themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            debugShowCheckedModeBanner: false,
            builder: (context, child) => LayuotTemplate(child: child!),
            navigatorKey: locator<NavigationService>().navigatorKey,
            onGenerateRoute: generateRoute,
            initialRoute: HomeRoute,
          );
        });
  }
}

import 'package:bernold_application/config/app_router.dart';
import 'package:flutter/material.dart';
import 'package:bernold_application/screens/screens.dart';
import 'config/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bernold Autoparts",
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner:
          false, //this line of code removes the debug banner.
    );
  }
}

import 'package:doctorek/views/ui/shared/routService/app_router.dart';
import 'package:doctorek/views/ui/views/startup/startup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.goToRoute,
        initialRoute: Routes.splashRoute,
        title: 'Flutter Demo',
        theme: ThemeData(useMaterial3: true),
        //theme: getApplicationTheme(),
        home: const SplashView());
  }
}

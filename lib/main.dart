import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golden_soft_test/pages/orders_page.dart';
import 'package:golden_soft_test/pages/sign_up_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/sign-up',
      getPages: [
        GetPage(name: '/sign-up', page: () => SignUpAccountPage()),
        GetPage(name: '/orders-page', page: () => OrdersPage()),
      ],
    );
  }
}

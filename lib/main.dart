import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:site_pity/screens/blog.dart';
import 'package:site_pity/screens/contact.dart';
import 'package:site_pity/screens/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'config.dart';
import 'screens/home.dart';

// https://docs.flutter.dev/perf/rendering-performance

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await initializeDateFormatting("pt_Br");
  Blog.getBlog();
  setUrlStrategy(PathUrlStrategy());
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/serviço': (context) => const ServicesPage(),
        '/blog': (context) => const BlogPage(),
        '/contato': (context) => ContactPage(),
      },

      title: 'P2P Saúde e segurança',
      theme: ThemeData.from(colorScheme: SiteConfig.lightColors),
      // darkTheme: ThemeData.from(colorScheme: SiteConfig.darkColors),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

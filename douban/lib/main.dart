import 'package:douban/util/localization_manager.dart';
import 'package:douban/util/provider_manager.dart';
import 'package:douban/util/router_manager.dart';
import 'package:douban/util/storage_manager.dart';
import 'package:douban/view_model/theme_view_model.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';



void main() async {


  WidgetsFlutterBinding.ensureInitialized();

  await StorageManager.setup();
  await LocalizationManger.setup();

  RouterManager.setup();

  runApp(TheApp());
}

class TheApp extends StatefulWidget {
  @override
  _TheAppState createState() => _TheAppState();
}

class _TheAppState extends State<TheApp> with WidgetsBindingObserver {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: providers,
        child: Consumer<ThemeViewModel>(
          builder: (context, _, widget) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: lightData,
                darkTheme: darkData,
                themeMode: StorageManager.themeMode,
                initialRoute: path(RouterType.home),
                onGenerateRoute: RouterManager.router.generator,
                localizationsDelegates: [
                  LocalizationManger.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate
                ]
            );
          },
        )
    );
  }
}




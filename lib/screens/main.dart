import 'package:colorguesser/screens/reference_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'language_list_screen.dart';
import 'settings_screen.dart';
import '../core/constants.dart';
import 'dart:io';

import 'store_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(generalBoxName);
  initDefaultValues(); //this hopefully works

  // setInitialValues(); //This is to set initial values for Hive given they are not initialized so I dont have to depend on first time default being correct
  runApp(
    EasyLocalization(supportedLocales: supportedLocales, path: 'assets/translations', fallbackLocale: const Locale('en'), child: const RomaniceApp()),
  );
}

List<Widget> pages = [
  const LanguageBoxHolder(),
  const ReferenceScreen(),
  const StoreScreen(),
  // const InfoScreen(),
  const SettingsScreen(),
];

class RomaniceApp extends StatefulWidget {
  const RomaniceApp({super.key});

  @override
  State<RomaniceApp> createState() => _RomaniceAppState();
}

class _RomaniceAppState extends State<RomaniceApp> with WidgetsBindingObserver {
  final Box<dynamic> _generalBox = Hive.box(generalBoxName);

  late String deviceLocaleCode = Platform.localeName.substring(0, 2);

  // not needed
  // late List<Locale> deviceLocaleCodes =
  //     View.of(context).platformDispatcher.locales;

  late String selectedLocaleCode; //The one chosen by the user
  late String localeInUseCode; //the one ultimately displayed

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this); // Subscribe to changes

    bool usingSystemLocale = _generalBox.get('useSystemLocale', defaultValue: true);
    selectedLocaleCode = _generalBox.get('selectedLocaleCode', defaultValue: 'en');
    localeInUseCode = usingSystemLocale ? deviceLocaleCode.substring(0, 2) : selectedLocaleCode;

    super.initState();
  }

  @override
  void didChangeLocales(List<Locale>? locale) {
    // This is run when system locales are changed
    super.didChangeLocales(locale);
    // Update state with the new values and redraw controls
    initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const AppScreen(),
    );
  }
}

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(generalBoxName).listenable(),
      builder: (context, box, widget) {
        return Scaffold(
          body: pages[navBarIndex],
          bottomNavigationBar: Container(
            height: 65,
            color: darkColor,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GNav(
                activeColor: darkColor,
                tabBackgroundColor: lightColor,
                color: lightColor,
                textStyle: const TextStyle(
                  color: lightColor,
                ),
                padding: const EdgeInsets.all(8),
                gap: 4,
                iconSize: 30,
                onTabChange: (index) {
                  setState(() {
                    navBarIndex = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.menu_book,
                    text: 'textGame'.tr(),
                    textStyle: const TextStyle(fontFamily: 'Fraunces', color: darkColor),
                  ),
                  GButton(
                    icon: Icons.shelves,
                    text: 'Library'.tr(), //TODO
                    textStyle: const TextStyle(fontFamily: 'Fraunces', color: darkColor),
                  ),
                  GButton(
                    icon: Icons.store,
                    text: 'textStore'.tr(),
                    textStyle: const TextStyle(fontFamily: 'Fraunces', color: darkColor),
                  ),
                  // GButton(
                  //   icon: Icons.info,
                  //   text: 'Information'.tr(),
                  //   textStyle: const TextStyle(fontFamily: 'Fraunces', color: darkColor),
                  // ),
                  GButton(
                    icon: Icons.settings,
                    text: 'textSettings'.tr(),
                    textStyle: const TextStyle(fontFamily: 'Fraunces', color: darkColor),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

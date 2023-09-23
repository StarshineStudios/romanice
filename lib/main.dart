import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'game_screen.dart';
import 'settings_screen.dart';
import 'constants.dart';
import 'dart:io';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(generalBoxName);
  // setInitialValues(); //This is to set initial values for Hive given they are not initialized so I dont have to depend on first time default being correct
  runApp(
    // Phoenix(
    //   child:
    EasyLocalization(
        supportedLocales: SupportedLocales.all,
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const RomaniceApp()),
    // ),
  );
}

// Future<void> setInitialValues() async {
//   final Box<dynamic> box = Hive.box('generalBoxString');

//   // Replace these key-value pairs with your desired initial values
//   final initialData = {
//     'useSystemLocale': true,
//     'selectedLocale': const Locale('en'),
//     // Add more key-value pairs as needed
//   };

//   // Iterate through the initialData map and set values in the box
//   initialData.forEach((key, value) {
//     if (!box.containsKey(key)) {
//       box.put(key, value);
//     }
//   });
// }

List<Widget> pages = [
  const GameScreen(),
  const SettingsScreen(),
];

class RomaniceApp extends StatefulWidget {
  const RomaniceApp({super.key});

  @override
  State<RomaniceApp> createState() => _RomaniceAppState();
}

class _RomaniceAppState extends State<RomaniceApp> with WidgetsBindingObserver {
  final Box<dynamic> _generalBox = Hive.box(generalBoxName);

  late String deviceLocaleCodes = Platform.localeName;

  // not needed
  // late List<Locale> deviceLocaleCodess =
  //     View.of(context).platformDispatcher.locales;

  late String selectedLocaleCode; //The one chosen by the user
  late String localeInUseCode; //the one ultimately displayed

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this); // Subscribe to changes
    _generalBox.put('deviceLocaleCodesCode', deviceLocaleCodes);
    bool usingSystemLocale =
        _generalBox.get('useSystemLocale', defaultValue: true);
    selectedLocaleCode =
        _generalBox.get('selectedLocaleCode', defaultValue: 'en');
    localeInUseCode = usingSystemLocale
        ? deviceLocaleCodes.substring(0, 2)
        : selectedLocaleCode;

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
            height: 75,
            color: foregroundColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GNav(
                activeColor: lightColor,
                tabBackgroundColor: backgroundColor,
                color: lightColor,
                textStyle: const TextStyle(
                  color: lightColor,
                ),
                padding: const EdgeInsets.all(13),
                gap: 8,
                iconSize: 30,
                onTabChange: (index) {
                  setState(() {
                    navBarIndex = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.square,
                    text: 'textGame'.tr(),
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: 'textSettings'.tr(),
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

//https://github.com/The-ring-io/flutter_phoenix/tree/master

// class Phoenix extends StatefulWidget {
//   final Widget child;

//   Phoenix({Key? key, required this.child}) : super(key: key);

//   @override
//   _PhoenixState createState() => _PhoenixState();

//   static rebirth(BuildContext context) {
//     context.findAncestorStateOfType<_PhoenixState>()!.restartApp();
//   }
// }

// class _PhoenixState extends State<Phoenix> {
//   Key _key = UniqueKey();

//   void restartApp() {
//     setState(() {
//       _key = UniqueKey();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return KeyedSubtree(
//       key: _key,
//       child: widget.child,
//     );
//   }
// }

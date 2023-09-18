import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'game_screen.dart';
import 'settings_screen.dart';
import 'constants.dart';
import 'l10n/L10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// Import the intl package

import 'dart:io';

const generalBoxName = 'generalBoxString';

//https://github.com/The-ring-io/flutter_phoenix/tree/master

class Phoenix extends StatefulWidget {
  final Widget child;

  Phoenix({Key? key, required this.child}) : super(key: key);

  @override
  _PhoenixState createState() => _PhoenixState();

  static rebirth(BuildContext context) {
    context.findAncestorStateOfType<_PhoenixState>()!.restartApp();
  }
}

class _PhoenixState extends State<Phoenix> {
  Key _key = UniqueKey();

  void restartApp() {
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _key,
      child: widget.child,
    );
  }
}

//https://stackoverflow.com/a/62825776
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(generalBoxName);
  //setInitialValues();
  runApp(Phoenix(child: const RomaniceApp()));
}

List<Widget> pages = [
  GameScreen(),
  const SettingsScreen(),
];

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

class RomaniceApp extends StatefulWidget {
  const RomaniceApp({super.key});

  @override
  State<RomaniceApp> createState() => _RomaniceAppState();
}

class _RomaniceAppState extends State<RomaniceApp> with WidgetsBindingObserver {
  // Store dynamic changeable locale settings here, they change with the system changes

  final Box<dynamic> _generalBox = Hive.box(generalBoxName);
  late String currentDefaultSystemLocale = Platform.localeName;
  late List<Locale> currentSystemLocales =
      View.of(context).platformDispatcher.locales;

  late String selectedLocaleCode;
  late String localeInUseCode;

  //MyApp.of(context).setLocale(Locale.fromSubtags(languageCode: 'en'))
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this); // Subscribe to changes

    bool usingSystemLocale =
        _generalBox.get('useSystemLocale', defaultValue: true);
    selectedLocaleCode =
        _generalBox.get('selectedLocaleCode', defaultValue: 'en');
    localeInUseCode = usingSystemLocale
        ? currentDefaultSystemLocale.substring(0, 2)
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
    // Here we read the current locale values
    print(currentDefaultSystemLocale);
    return ValueListenableBuilder(
      valueListenable: Hive.box(generalBoxName).listenable(),
      builder: (context, box, widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          locale: Locale(localeInUseCode),
          home: const AppScreen(),
        );
      },
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
                    text: AppLocalizations.of(context)!.textGame,
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: AppLocalizations.of(context)!.textSettings,
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

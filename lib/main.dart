import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'game_screen.dart';
import 'settings_screen.dart';
import 'constants.dart';
import 'l10n/L10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart'; // Import the intl package

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

const generalBoxName = 'generalBoxString';

//https://stackoverflow.com/a/62825776
void main() async {
  await Hive.initFlutter();
  await Hive.openBox(generalBoxName);
  WidgetsFlutterBinding.ensureInitialized();

  // Define locales that our app supports (no country codes, see comments below)

  final RomaniceApp romaniceApp = RomaniceApp();

  runApp(RomaniceApp());
  // runApp(MaterialApp(
  //   title: 'RomaniceApp',
  //   home: romaniceApp,
  //   supportedLocales: appSupportedLocales,
  //   localizationsDelegates: const [
  //     // These are default localization delegates that implement the very basic translations for standard controls and date/time formats.
  //     GlobalMaterialLocalizations.delegate,
  //     GlobalWidgetsLocalizations.delegate,
  //   ],
  // ));
}

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
  // Store dynamic changeable locale settings here, they change with the system changes
  late String currentDefaultSystemLocale = Platform.localeName;
  late List<Locale> currentSystemLocales =
      View.of(context).platformDispatcher.locales;
  @override
  void initState() {
    // This is run when the widget is first time initialized
    WidgetsBinding.instance.addObserver(this); // Subscribe to changes
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: Locale(currentDefaultSystemLocale.substring(0, 2)),
      home: AppScreen(),
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
  }
}
      //     Scaffold(
      //   body: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       // Text(
      //       //     'Initial system default locale: ${widget.initialDefaultSystemLocale}.'),
      //       // Text(
      //       //     'Initial language code: ${widget.initialDefaultSystemLocale.split('_')[0]}, country code: ${widget.initialDefaultSystemLocale.split('_')[1]}.'),
      //       // Text('Initial system locales:'),
      //       // for (var locale in widget.initialSystemLocales)
      //       //   Text(locale.toString()),
      //       Text(''),
      //       Text(
      //           'Current system default locale: ${currentDefaultSystemLocale}.'),
      //       Text('Current system locales:'),
      //       for (var locale in currentSystemLocales) Text(locale.toString()),
      //       Text(''),
      //       Text(
      //           'Selected application locale: ${Localizations.localeOf(context).toString()}.'),
      //       Text(''),
      //       Text(
      //           'Current date: ${Localizations.of<MaterialLocalizations>(context, MaterialLocalizations)?.formatFullDate(DateTime.now())}.'),
      //       Text(
      //           'Current time zone: ${DateTime.now().timeZoneName} (offset ${DateTime.now().timeZoneOffset}).'),
      //     ],
      //   ),
      // ),
// void main() async {
//   await Hive.initFlutter();
//   await Hive.openBox(generalBoxName);
//   runApp(
//     const MaterialApp(
//       home: RomaniceApp(),
//     ),
//   );
// }

// class RomaniceApp extends StatefulWidget {
//   const RomaniceApp({super.key});

//   @override
//   State<RomaniceApp> createState() => _RomaniceAppState();
// }

// class _RomaniceAppState extends State<RomaniceApp> {
//   final Box<dynamic> _generalBox = Hive.box('generalBoxString');

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool useSystemLocale =
//         _generalBox.get('useSystemDefaultLanguage', defaultValue: true);
//     Locale selectedLocale = _generalBox.get('selectedLanguage',
//         defaultValue: Localizations.localeOf(context));

//     // Determine the app's locale based on _useSystemLocale
//     Locale appLocale =
//         useSystemLocale ? Localizations.localeOf(context) : selectedLocale;
//     print(Localizations.localeOf(context).toString());
//     return MaterialApp(
//       home: const AppScreen(),
//       debugShowCheckedModeBanner: false,
//       supportedLocales: L10n.all,
//       locale: appLocale,
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       builder: (context, child) {
//         // Use the Locale override provided by MaterialApp
//         return Localizations.override(
//           context: context,
//           locale: appLocale,
//           child: child,
//         );
//       },
//     );
//   }
// }

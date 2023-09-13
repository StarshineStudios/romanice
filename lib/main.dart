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

const generalBoxName = 'generalBoxString';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(generalBoxName);
  runApp(RomaniceApp());
}

class RomaniceApp extends StatefulWidget {
  const RomaniceApp({Key? key});

  @override
  _RomaniceAppState createState() => _RomaniceAppState();
}

class _RomaniceAppState extends State<RomaniceApp> {
  String _selectedLanguage = 'English'; // Default language

  @override
  void initState() {
    super.initState();
    _loadLanguage();
  }

  Future<void> _loadLanguage() async {
    final generalBox = Hive.box(generalBoxName);
    final useSystemDefaultLanguage =
        generalBox.get('useSystemDefaultLanguage', defaultValue: true);
    final selectedLanguage =
        generalBox.get('selectedLanguage', defaultValue: 'English');

    if (useSystemDefaultLanguage) {
      // Use intl package to get system's default locale
      final systemLocale = Intl.systemLocale.split('_')[0];
      setState(() {
        _selectedLanguage = systemLocale;
      });
    } else {
      setState(() {
        _selectedLanguage = selectedLanguage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppScreen(),
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      locale: Locale(_selectedLanguage),
    );
  }
}

List<Widget> pages = [
  const GameScreen(),
  const SettingsScreen(),
];

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.language),
      ),
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
                text: AppLocalizations.of(context)!.gameText,
              ),
              GButton(
                icon: Icons.settings,
                text: AppLocalizations.of(context)!.settingsText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

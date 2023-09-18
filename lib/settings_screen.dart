import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'game_screen.dart';
import 'settings_screen.dart';
import 'constants.dart';
import 'l10n/L10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//The page for modifying the settings
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Box<dynamic> _generalBox = Hive.box('generalBoxString');

  //Are we using the default system locale?
  late bool usingSystemLocale;
  late String selectedLocaleCode;

  void updateSelectedLocaleCode(String newLocaleCode) {
    selectedLocaleCode = newLocaleCode;
    // setState(() {

    // });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    usingSystemLocale = _generalBox.get('useSystemLocale', defaultValue: true);
    selectedLocaleCode =
        _generalBox.get('selectedLocaleCode', defaultValue: 'en');

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.textSettings),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.textSystemLanguage,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Switch(
                  value: usingSystemLocale,
                  onChanged: (newValue) {
                    setState(() {
                      _generalBox.put('useSystemLocale', newValue);
                    });
                  },
                ),
                Text(
                    AppLocalizations.of(context)!.useSystemDefaultLanguageText),
              ],
            ),
            LocaleDropdown(
              updateCode: updateSelectedLocaleCode,
              enabled: !usingSystemLocale,
            ),
            ElevatedButton(
                onPressed: () {
                  _generalBox.put('selectedLocaleCode', selectedLocaleCode);
                  print(selectedLocaleCode);
                  Phoenix.rebirth(context);
                },
                child: Text('Apply (This will restart app)')),
            Text(
              AppLocalizations.of(context)!.resetProgressText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              child: Text(AppLocalizations.of(context)!.resetProgressText +
                  '(This will restart app)'),
              onPressed: () {
                setState(() {
                  _generalBox.clear();
                  Phoenix.rebirth(context);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class LocaleDropdown extends StatefulWidget {
  final Function updateCode;
  final bool enabled;
  const LocaleDropdown(
      {super.key, required this.updateCode, required this.enabled});

  @override
  State<LocaleDropdown> createState() => _LocaleDropdownState();
}

class _LocaleDropdownState extends State<LocaleDropdown> {
  late String _selectedLocaleCode;
  final Box<dynamic> _generalBox = Hive.box('generalBoxString');

  final List<String> _availableLocaleCodes = [
    'en', // English
    'es', // Spanish
    'fr', // French
    'it', // Italian
    'pt', // Portuguese
    'la', // Latin
    'ro', // Romanian
  ];

  @override
  void initState() {
    super.initState();
    // Initialize the selected locale from Hive or use a default value
    final savedLocale =
        _generalBox.get('selectedLocaleCode', defaultValue: 'en');
    _selectedLocaleCode = savedLocale;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedLocaleCode,
      onChanged: widget.enabled
          ? (String? newLocaleCode) {
              if (newLocaleCode != null) {
                widget.updateCode(newLocaleCode);
                _selectedLocaleCode = newLocaleCode;
                print(newLocaleCode);
              }
            }
          : null,
      items: _availableLocaleCodes.map((String localeCode) {
        return DropdownMenuItem<String>(
          value: localeCode,
          child: Text(_getLocaleDisplayName(localeCode)),
        );
      }).toList(),
    );
  }

  String _getLocaleDisplayName(String localeCode) {
    switch (localeCode) {
      case 'en':
        return 'English';
      case 'es':
        return 'Spanish';
      case 'fr':
        return 'French';
      case 'it':
        return 'Italian';
      case 'pt':
        return 'Portuguese';
      case 'la':
        return 'Latin';
      case 'ro':
        return 'Romanian';
      default:
        return 'Unknown';
    }
  }
}

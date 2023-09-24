import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'game_screen.dart';
import 'settings_screen.dart';
import 'constants.dart';
import 'dart:io';

import 'package:flutter_localizations/flutter_localizations.dart';

//The page for modifying the settings
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Box<dynamic> _generalBox = Hive.box('generalBoxString');

  //Are we using the default system locale?

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void updateContext() {
      setState(() {
        String actualLocaleCode =
            _generalBox.get('usingSystemLocale', defaultValue: true)
                ? Platform.localeName.substring(0, 2)
                : _generalBox.get('selectedLocaleCode', defaultValue: 'en');

        context.setLocale(ifSupported(Locale(actualLocaleCode)));
      });
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'textSettings'.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'textSystemLanguage'.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Switch(
                  value:
                      _generalBox.get('usingSystemLocale', defaultValue: true),
                  onChanged: (newValue) {
                    setState(() {
                      _generalBox.put('usingSystemLocale', newValue);
                      updateContext();
                    });
                  },
                ),
                Text('useSystemDefaultLanguageText'.tr()),
              ],
            ),
            LocaleDropdown(
              updateContext: updateContext,
              enabled:
                  !_generalBox.get('usingSystemLocale', defaultValue: true),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       _generalBox.put('selectedLocaleCode', selectedLocaleCode);
            //     },
            //     child: const Text('Apply (This will restart app)')),
            Text(
              'resetProgressText'.tr(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              child: Text('resetProgressText'.tr()),
              onPressed: () {
                setState(() {
                  _generalBox.clear();
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
  final Function updateContext;
  final bool enabled;
  const LocaleDropdown(
      {super.key, required this.enabled, required this.updateContext});

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
    'fi', // Latin
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
                _generalBox.put('selectedLocaleCode', newLocaleCode);
                _selectedLocaleCode = newLocaleCode;

                widget.updateContext();
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
      case 'fi':
        return 'Latin';
      case 'ro':
        return 'Romanian';
      default:
        return 'Unknown';
    }
  }
}

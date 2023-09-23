import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

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

    String deviceLocaleCode =
        _generalBox.get('deviceLocaleCode', defaultValue: 'en');

    void updateContext() {
      String actualLocaleCode =
          usingSystemLocale ? deviceLocaleCode : selectedLocaleCode;
      context.setLocale(Locale(actualLocaleCode));
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
                  value: usingSystemLocale,
                  onChanged: (newValue) {
                    setState(() {
                      _generalBox.put('useSystemLocale', newValue);
                      updateContext();
                    });
                  },
                ),
                Text('useSystemDefaultLanguageText'.tr()),
              ],
            ),
            LocaleDropdown(
              updateContext: updateContext,
              updateCode: updateSelectedLocaleCode,
              enabled: !usingSystemLocale,
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
                  //Phoenix.rebirth(context);
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
  final Function updateContext;
  final bool enabled;
  const LocaleDropdown(
      {super.key,
      required this.updateCode,
      required this.enabled,
      required this.updateContext});

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
                widget.updateContext();
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

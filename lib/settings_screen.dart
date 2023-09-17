import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/adapters.dart';
import 'main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Box<dynamic> _generalBox = Hive.box('generalBoxString');

  late Locale selectedLocale;
  late bool usingSystemLocale;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    usingSystemLocale = _generalBox.get('useSystemLocale', defaultValue: true);
    selectedLocale =
        _generalBox.get('selectedLocale', defaultValue: const Locale('en'));

    return ValueListenableBuilder(
      valueListenable: Hive.box(generalBoxName).listenable(),
      builder: (context, box, widget) {
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
                  AppLocalizations.of(context)!.language,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
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
                      'TEMP USE DEFAULT',
                      //AppLocalizations.of(context)!.useSystemDefaultLanguageText,
                    ),
                  ],
                ),
                LocaleDropdown(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LocaleDropdown extends StatefulWidget {
  @override
  _LocaleDropdownState createState() => _LocaleDropdownState();
}

class _LocaleDropdownState extends State<LocaleDropdown> {
  late String _selectedLocaleCode;
  final Box<dynamic> _generalBox = Hive.box(generalBoxName);

  final List<String> _availableLocaleCodes = [
    'en', // English
    'es', // Spanish
    'fr', // French
    'it', // Italian
    'pt', // Portuguese
    'la', // Latin
    'ro', // Romanian
  ];

  void _updateSelectedLocaleCode(String newLocaleCode) {
    setState(() {
      _selectedLocaleCode = newLocaleCode;
      _generalBox.put('selectedLocaleCode', newLocaleCode.toString());
      print(_selectedLocaleCode);
    });
  }

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
      onChanged: (String? newLocaleCode) {
        _updateSelectedLocaleCode(newLocaleCode!);
      },
      items: _availableLocaleCodes.map((String localeCode) {
        return DropdownMenuItem<String>(
          value: localeCode,
          child: Text(_getLocaleDisplayName(localeCode)),
        );
      }).toList(),
    );
  }

  // Helper function to get the display name for each locale
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

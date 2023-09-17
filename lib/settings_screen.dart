import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

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

  void _handleLanguageChange() {
    setState(() {
      // Rebuild the widget tree
    });
  }

  @override
  Widget build(BuildContext context) {
    usingSystemLocale = _generalBox.get('useSystemLocale', defaultValue: true);
    selectedLocale =
        Locale(_generalBox.get('selectedLocaleCode', defaultValue: 'en'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                const Text('Use System Default'),
              ],
            ),
            LocaleDropdown(onLanguageChange: _handleLanguageChange),
          ],
        ),
      ),
    );
  }
}

class LocaleDropdown extends StatefulWidget {
  final Function onLanguageChange;

  const LocaleDropdown({super.key, required this.onLanguageChange});

  @override
  _LocaleDropdownState createState() => _LocaleDropdownState();
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

  void _updateSelectedLocaleCode(String newLocaleCode) {
    setState(() {
      _selectedLocaleCode = newLocaleCode;
      _generalBox.put('selectedLocaleCode', newLocaleCode.toString());
      widget.onLanguageChange(); // Trigger the callback
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
        if (newLocaleCode != null) {
          _updateSelectedLocaleCode(newLocaleCode);
        }
      },
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

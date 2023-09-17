import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final Box<dynamic> _generalBox = Hive.box('generalBoxString');
  late bool _useSystemDefaultLanguage;
  late String _selectedLanguage = 'English';

  @override
  void initState() {
    super.initState();
    _useSystemDefaultLanguage =
        _generalBox.get('useSystemDefaultLanguage', defaultValue: true);
    _selectedLanguage =
        _generalBox.get('selectedLanguage', defaultValue: 'English');
  }

  void _saveSettings() {
    _generalBox.put('useSystemDefaultLanguage', _useSystemDefaultLanguage);
    _generalBox.put('selectedLanguage', _selectedLanguage);
  }

  @override
  Widget build(BuildContext context) {
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
                  value: _useSystemDefaultLanguage,
                  onChanged: (newValue) {
                    setState(() {
                      _useSystemDefaultLanguage = newValue;
                      if (newValue) {
                        // Use system default language
                        // You may want to set the _selectedLanguage to the system's default here
                      }
                    });
                    _saveSettings();
                  },
                ),
                Text(
                  'TEMP USE DEFAULT',
                  //AppLocalizations.of(context)!.useSystemDefaultLanguageText,
                ),
              ],
            ),
            DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
                _saveSettings();
              },
              items: [
                'English',
                'Español',
                'Français',
                'Italiano',
                'Latin',
                'Português',
                'Română',
              ].map((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Text(language),
                );
              }).toList(),
              // Disable dropdown when use system default language is enabled
              isExpanded: !_useSystemDefaultLanguage,
            ),
          ],
        ),
      ),
    );
  }
}

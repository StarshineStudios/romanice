import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tinycolor2/tinycolor2.dart';
// import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'dart:io';

// import 'package:flutter_localizations/flutter_localizations.dart';

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
        String actualLocaleCode = _generalBox.get('usingSystemLocale', defaultValue: true)
            ? Platform.localeName.substring(0, 2)
            : _generalBox.get('selectedLocaleCode', defaultValue: 'en');

        context.setLocale(ifSupported(Locale(actualLocaleCode)));
      });
    }

    return Scaffold(
      backgroundColor: mediumColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: lightColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'textSettings'.tr(),
                    style: const TextStyle(fontSize: 60, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'textSystemLanguage'.tr(),
                    style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    textAlign: TextAlign.center,
                    'useSystemDefaultLanguageText'.tr(),
                    style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                  ),
                  Switch(
                    focusColor: darkColor,
                    hoverColor: darkColor,
                    activeColor: darkColor,
                    value: _generalBox.get('usingSystemLocale', defaultValue: true),
                    onChanged: (newValue) {
                      setState(() {
                        _generalBox.put('usingSystemLocale', newValue);
                        updateContext();
                      });
                    },
                  ),
                  LocaleDropdown(
                    updateContext: updateContext,
                    enabled: !_generalBox.get('usingSystemLocale', defaultValue: true),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'textLatin'.tr(),
                    style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'textUseVocativeIf'.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                  ),
                  Switch(
                    focusColor: darkColor,
                    hoverColor: darkColor,
                    activeColor: darkColor,
                    value: _generalBox.get('usingVocativeIf', defaultValue: true),
                    onChanged: (newValue) {
                      setState(() {
                        _generalBox.put('usingVocativeIf', newValue);
                        // updateContext();
                      });
                    },
                  ),
                  // LocaleDropdown(
                  //   updateContext: updateContext,
                  //   enabled: !_generalBox.get('usingSystemLocale', defaultValue: true),
                  // ),
                ],
              ),
            ),
          ),

          //SPANISH
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'textSpanish'.tr(),
                    style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'textUseVosotros'.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                  ),
                  Switch(
                    focusColor: darkColor,
                    hoverColor: darkColor,
                    activeColor: darkColor,
                    value: _generalBox.get('usingVosotros', defaultValue: true),
                    onChanged: (newValue) {
                      setState(() {
                        _generalBox.put('usingVosotros', newValue);
                        // updateContext();
                      });
                    },
                  ),
                  // LocaleDropdown(
                  //   updateContext: updateContext,
                  //   enabled: !_generalBox.get('usingSystemLocale', defaultValue: true),
                  // ),
                ],
              ),
            ),
          ),

          //DELETE
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'resetProgressText'.tr(),
                    style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'resetProgressText'.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                  ),
                  const SizedBox(height: 10),

                  NiceButton(
                    color: pastelRed,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: mediumColor,
                            title: Text(
                              'Confirm'.tr(),
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                            ),
                            content: Text(
                              'Are you sure you want to reset all progress? This will delete all shop purchases as well.'.tr(),
                              style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                            ),
                            actions: <Widget>[
                              NiceButton(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                                  ),
                                ),
                                onPressed: () {
                                  _generalBox.clear(); // Perform the action

                                  Navigator.of(context).pop(); // Dismiss the dialog
                                },
                              ),
                              NiceButton(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop(); // Dismiss the dialog
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'resetProgressText'.tr(),
                        style: TextStyle(fontSize: 25, color: pastelRed.darken(30), fontFamily: 'Fraunces'),
                      ),
                    ),
                  ),
                  // LocaleDropdown(
                  //   updateContext: updateContext,
                  //   enabled: !_generalBox.get('usingSystemLocale', defaultValue: true),
                  // ),
                ],
              ),
            ),
          ),

          //DOES NOT YET WORK
          // Padding(
          //   padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
          //   child: Container(
          //     padding: const EdgeInsets.all(8.0),
          //     decoration: BoxDecoration(color: lightColor, borderRadius: BorderRadius.circular(12)),
          //     child: Column(
          //       children: [
          //         Center(
          //           child: Text(
          //             'resetProgressText'.tr(),
          //             style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //         NiceButton(
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Text(
          //               'resetProgressText'.tr(),
          //               style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
          //             ),
          //           ),
          //           onPressed: () {
          //             setState(() {
          //               _generalBox.clear();
          //             });
          //           },
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class LocaleDropdown extends StatefulWidget {
  final Function updateContext;
  final bool enabled;
  const LocaleDropdown({super.key, required this.enabled, required this.updateContext});

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
    final savedLocale = _generalBox.get('selectedLocaleCode', defaultValue: 'en');
    _selectedLocaleCode = savedLocale;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedLocaleCode,
      dropdownColor: almostWhiteColor,
      focusColor: fadedColor,
      onChanged: widget.enabled
          ? (String? newLocaleCode) {
              if (newLocaleCode != null) {
                _generalBox.put('selectedLocaleCode', newLocaleCode);
                _selectedLocaleCode = newLocaleCode;

                widget.updateContext();
                // print(newLocaleCode);
              }
            }
          : null,
      items: _availableLocaleCodes.map((String localeCode) {
        return DropdownMenuItem<String>(
          value: localeCode,
          child: Text(
            _getLocaleDisplayName(localeCode),
            style: TextStyle(fontSize: 20, color: widget.enabled ? darkColor : fadedColor, fontFamily: 'Fraunces'),
          ),
        );
      }).toList(),
    );
  }

  String _getLocaleDisplayName(String localeCode) {
    switch (localeCode) {
      case 'en':
        return 'language'.tr() == 'textEnglish'.tr() ? 'English' : '${'textEnglish'.tr()} (English)';

      case 'es':
        return 'language'.tr() == 'textSpanish'.tr() ? 'Español' : '${'textSpanish'.tr()} (Español)';

      case 'fr':
        return 'language'.tr() == 'textFrench'.tr() ? 'Français' : '${'textFrench'.tr()} (Français)';

      case 'it':
        return 'language'.tr() == 'textItalian'.tr() ? 'Italiano' : '${'textItalian'.tr()} (Italiano)';

      case 'pt':
        return 'language'.tr() == 'textPortuguese'.tr() ? 'Português' : '${'textPortuguese'.tr()} (Português)';

      case 'fi':
        return 'language'.tr() == 'textLatin'.tr() ? 'Latīnum' : '${'textLatin'.tr()} (Latīnum)';

      case 'ro':
        return 'language'.tr() == 'textRomanian'.tr() ? 'Română' : '${'textRomanian'.tr()} (Română)';

      default:
        return 'Unknown';
    }
  }
}

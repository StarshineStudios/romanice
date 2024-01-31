import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
// import 'package:flutter/material.dart';
import '../core/constants.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';

//The page for modifying the settings
class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  // final Box<dynamic> _generalBox = Hive.box('generalBoxString');

  //Are we using the default system locale?

  @override
  void initState() {
    super.initState();
  }

//TODO im lazy so writin git hereFIX LATIN DNyE message for imperaive o somehbting
  @override
  Widget build(BuildContext context) {
    final Box<dynamic> _generalBox = Hive.box('generalBoxString');
    int coins = _generalBox.get('coins', defaultValue: 1);
    String selectedTypewriter = _generalBox.get('selectedTypewriter', defaultValue: 'defaultTypewriter');
    _generalBox.put('defaultTypewriterBought', true);

    List<Map<String, Object>> boughtTypewriters = [];
    List<Map<String, Object>> unboughtTypewriters = [];

    Map<Object, bool> bought = {};
    for (Map<String, Object> map in typewritersList) {
      bool b = _generalBox.get('${map['name']}Bought', defaultValue: false);
      bought[map['name']!] = b;
      if (b) {
        boughtTypewriters.add(map);
      } else {
        unboughtTypewriters.add(map);
      }
    }
    boughtTypewriters.addAll(unboughtTypewriters);
    List<Map<String, Object>> typewriters = boughtTypewriters;
    // bought['defaultTypewriter'] = true;

    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: darkColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 7.5,
            ),
            Container(
              height: 35,
              width: 35, // Adjust the size as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/Coin.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 7.5,
            ),
            Text(
              'textCoins'.tr() + ': $coins',
              style: const TextStyle(fontSize: 20, color: lightColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
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
                    'textStore'.tr(),
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
                    'textTypewriters'.tr(),
                    style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(
                    height: 125,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: typewriters.length,
                      itemBuilder: (context, index) {
                        final typewriter = typewriters[index];
                        final String typewriterName = typewriter['name']! as String;
                        final flagImagePath = typewriter['back']! as String;
                        final int cost = typewriter['cost']! as int;
                        final isBought = bought[typewriterName];
                        final bool isSelected = selectedTypewriter == typewriterName;

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              //if already bought, simply select it.

                              if (isBought) {
                                setState(() {
                                  _generalBox.put('selectedTypewriter', typewriterName);
                                });
                              } else {
                                if (coins >= cost) {
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
                                          'Are you sure you want to buy this item for $cost? This cannot be refunded '.tr(),
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
                                              setState(() {
                                                _generalBox.put('${typewriterName}Bought', true);
                                                _generalBox.put('selectedTypewriter', typewriterName);

                                                _generalBox.put('coins', coins - cost);
                                              });

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
                                } else {
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
                                          'insufficient coins. $cost needed'.tr(),
                                          style: const TextStyle(fontSize: 20, color: darkColor, fontFamily: 'Fraunces'),
                                        ),
                                        actions: <Widget>[
                                          NiceButton(
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Ok',
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
                                }
                              }

//if not bought
                              // Update the selected typewriter when a flag is tapped.

                              //create a dialog based on funds.
                            },
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: isSelected ? pastelGreen : mediumColor,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: lightColor,
                                    image: DecorationImage(
                                      image: AssetImage(flagImagePath),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: !isBought! || isSelected
                                      ? Container(
                                          height: 40,
                                          width: 40,
                                          alignment: Alignment.bottomCenter,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), bottomRight: Radius.circular(8.0)),
                                              color: isSelected ? pastelGreen : mediumColor),
                                          child: Icon(
                                            isSelected ? Icons.check : Icons.lock,
                                            color: almostWhiteColor,
                                            size: 30,
                                          ))
                                      : null,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
                    'more coming soon'.tr(),
                    style: const TextStyle(fontSize: 30, color: darkColor, fontFamily: 'Fraunces', fontWeight: FontWeight.bold),
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

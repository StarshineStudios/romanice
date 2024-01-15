import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
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
                    'comingSoonText'.tr(),
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

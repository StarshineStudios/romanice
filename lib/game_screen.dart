import 'package:colorguesser/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BorderedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double strokeWidth;
  final Color strokeColor;
  final Color fillColor;

  const BorderedText({
    super.key,
    required this.text,
    required this.style,
    this.strokeWidth = 6.0,
    this.strokeColor = Colors.black,
    this.fillColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Stroked text as border.
        Text(
          text,
          style: style.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        // Solid text as fill.
        Text(
          text,
          style: style.copyWith(color: fillColor),
        ),
      ],
    );
  }
}

class PeriodicTableElementBox extends StatelessWidget {
  final String imagePath;
  final String symbol;
  final String name;
  final int number;
  final VoidCallback onPressed;

  const PeriodicTableElementBox({
    super.key,
    required this.imagePath,
    required this.symbol,
    required this.name,
    required this.number,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 100, // Adjust the size as needed
          height: 100, // Adjust the size as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: BorderedText(
                  text: ' XP: $number',
                  strokeWidth: 15,
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                child: BorderedText(
                  text: symbol,
                  strokeWidth: 15,
                  style: const TextStyle(
                    fontSize: 120,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                child: BorderedText(
                  text: name,
                  strokeWidth: 15,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  //final List<PeriodicTableElementBox> elements;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    List<PeriodicTableElementBox> periodicElements = [
      PeriodicTableElementBox(
        imagePath: 'assets/FlagRome.png',
        symbol: 'La',
        name: 'textLatin'.tr(),
        number: 1,
        onPressed: () {
          // Handle onPressed action here
        },
      ),
      PeriodicTableElementBox(
        imagePath: 'assets/FlagItaly.png',
        symbol: 'It',
        name: 'textItalian'.tr(),
        number: 2,
        onPressed: () {
          // Handle onPressed action here
        },
      ),
      PeriodicTableElementBox(
        imagePath: 'assets/FlagSpain.png',
        symbol: 'Es',
        name: 'textSpanish'.tr(),
        number: 3,
        onPressed: () {
          // Handle onPressed action here
        },
      ),
      PeriodicTableElementBox(
        imagePath: 'assets/FlagFrance.png',
        symbol: 'Fr',
        name: 'textFrench'.tr(),
        number: 4,
        onPressed: () {
          // Handle onPressed action here
        },
      ),
      PeriodicTableElementBox(
        imagePath: 'assets/FlagPortugal.png',
        symbol: 'Pt',
        name: 'textPortuguese'.tr(),
        number: 5,
        onPressed: () {
          // Handle onPressed action here
        },
      ),
      PeriodicTableElementBox(
        imagePath: 'assets/FlagRomania.png',
        symbol: 'Ro',
        name: 'textRomanian'.tr(),
        number: 6,
        onPressed: () {
          // Handle onPressed action here
        },
      ),
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 410, // Adjust the element box width as needed
          childAspectRatio: 1.0, // Square boxes
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: periodicElements.length,
        itemBuilder: (context, index) {
          return periodicElements[index];
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: GameScreen(),
  ));
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    // Determine the number of columns based on screen width
    int columns = screenSize.width < 600 ? 1 : 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: columns,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        staggeredTiles: [
          StaggeredTile.extent(1, 200.0), // Each grid item is 1 column wide
          StaggeredTile.extent(1, 200.0),
          StaggeredTile.extent(1, 200.0),
          StaggeredTile.extent(1, 200.0),
          StaggeredTile.extent(1, 200.0),
          StaggeredTile.extent(1, 200.0),
        ],
        children: [
          _buildGridItem("Title 1", "assets/FlagRome.png"),
          _buildGridItem("Title 2", "assets/FlagItaly.png"),
          _buildGridItem("Title 3", "assets/FlagSpain.png"),
          _buildGridItem("Title 4", "assets/FlagPortugal.png"),
          _buildGridItem("Title 5", "assets/FlagFrance.png"),
          _buildGridItem("Title 6", "assets/FlagRomania.png"),
        ],
      ),
    );
  }

  Widget _buildGridItem(String title, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.white.withOpacity(0.8),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Conjugate button click
                    },
                    child: Text("Conjugate"),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Decline button click
                    },
                    child: Text("Decline"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GameScreen(),
  ));
}

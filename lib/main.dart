import 'package:flutter/material.dart';

void main() {
  runApp(FoodFinderApp());
}

class FoodFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodFinderHomePage(),
    );
  }
}

class FoodFinderHomePage extends StatefulWidget {
  @override
  _FoodFinderHomePageState createState() => _FoodFinderHomePageState();
}

class _FoodFinderHomePageState extends State<FoodFinderHomePage> {
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Food Fact Finder',
            style: TextStyle(
              color: Color(0xFF054A29),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: Color(0xFF5BBA6F),
        ),
        body: Container(
          color: Color(0xFF5BBA6F),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0)),
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xFF3FA34D),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Text("No Starred Items",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF054A29),
                          fontWeight: FontWeight.bold)),
                  // child: GridView.count(
                  //   crossAxisCount: 2,
                  //   shrinkWrap: true,
                  //   children: [
                  //     Checkbox(
                  //       value: checkbox1,
                  //       onChanged: (value) {
                  //         setState(() {
                  //           checkbox1 = value!;
                  //         });
                  //       },
                  //       activeColor: Color(0xFF3879F0),
                  //       checkColor: Colors.white,
                  //     ),
                  //     Checkbox(
                  //       value: checkbox2,
                  //       onChanged: (value) {
                  //         setState(() {
                  //           checkbox2 = value!;
                  //         });
                  //       },
                  //       activeColor: Color(0xFF3879F0),
                  //       checkColor: Colors.white,
                  //     ),
                  //     Checkbox(
                  //       value: checkbox3,
                  //       onChanged: (value) {
                  //         setState(() {
                  //           checkbox3 = value!;
                  //         });
                  //       },
                  //       activeColor: Color(0xFF3879F0),
                  //       checkColor: Colors.white,
                  //     ),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          width: 75,
          height: 75,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            onPressed: () {
              // Implement camera functionality here
            },
            // child: Icon(Icons.camera_alt, size: 30),
            child: new IconTheme(
              data: new IconThemeData(color: Color(0xFF054A29)),
              child: new Icon(Icons.camera_alt, size: 30),
            ),
            backgroundColor: Color(0xFF2A9134),
          ),
        ));
  }
}

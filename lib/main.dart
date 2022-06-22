import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Image(image: AssetImage("images/home.png"), width: 350, height: 700,)),
    // Text(
    //   'Index 0: Home',
    //   style: optionStyle,
    // ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('My Challenges'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 10,
        items: const <BottomNavigationBarItem>[         
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/challenges.png")),
            label: 'Challenge',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/leaderboard.png")),
            label: 'BOARD',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/marketplace.png")),
            label: 'MARKET',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/terms.png")),
            label: 'Post Ad',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("images/more.png")),
            label: 'MORE',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

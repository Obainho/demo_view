import 'package:flutter/material.dart';
import 'defaults.dart';
import 'pages/Locations/SelectLocation.dart';
import 'pages/channels/selectchannel.dart';
import 'pages/profile_UI/profileUI.dart';
import 'pages/sampleImages.dart';
import 'profileLoginHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 2;
  final pages = const [
    ProfileLoginHome(),
    SelectChannels(),
    Profile_UI(),
    SelectLocations(),
    SampleImages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 33, 34),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        type: BottomNavigationBarType.shifting,
        // When using ".shifting" method, we have to pass the bacground color to each individual item in the list.
        elevation: 60,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: Defaults.bottomNavItemColor,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            icon: Icon(
              Defaults.bottomNavItemIcon[0],
            ),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            icon: Icon(
              Defaults.bottomNavItemIcon[1],
            ),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            icon: Icon(
              Defaults.bottomNavItemIcon[2],
            ),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            icon: Icon(
              Defaults.bottomNavItemIcon[3],
            ),
            label: Defaults.bottomNavItemText[3],
          ),
          BottomNavigationBarItem(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            icon: Icon(
              Defaults.bottomNavItemIcon[4],
            ),
            label: Defaults.bottomNavItemText[4],
          ),
        ],
      ),
    );
  }
}

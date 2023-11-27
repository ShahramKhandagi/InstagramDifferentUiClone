import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_different_ui_clone/constants/constants.dart';
import 'package:instagram_different_ui_clone/screens/add_new_content.dart';
import 'package:instagram_different_ui_clone/screens/home_screen.dart';
import 'package:instagram_different_ui_clone/screens/notifications_screen.dart';
import 'package:instagram_different_ui_clone/screens/profile_screen.dart';
import 'package:instagram_different_ui_clone/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 18, 20, 31),
            currentIndex: _selectedBottomNavigationItem,
            onTap: (int index) {
              setState(() {
                _selectedBottomNavigationItem = index;
              });
            },
            showSelectedLabels: false,
            selectedItemColor: secondColor,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.blueGrey,
                ),
                activeIcon: Icon(Icons.home_filled),
                label: 'Item1',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.blueGrey,
                ),
                activeIcon: Icon(Icons.search),
                label: 'Item2',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.blueGrey,
                ),
                activeIcon: Icon(Icons.add_box_rounded),
                label: 'Item3',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_activity_outlined,
                  color: Colors.blueGrey,
                ),
                activeIcon: Icon(Icons.local_activity),
                label: 'Item4',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xffC5C5C5),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/mypro.jpeg'),
                    ),
                  ),
                ),
                activeIcon: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: secondColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset('images/mypro.jpeg'),
                    ),
                  ),
                ),
                label: 'Item4',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedBottomNavigationItem,
        children: getLayout(),
      ),
    );
  }

  List<Widget> getLayout() {
    return <Widget>[
      HomeScreen(),
      SearchScreen(),
      AddNewContentScreen(),
      NotificationsScreen(),
      ProfileScreen()
    ];
  }
}

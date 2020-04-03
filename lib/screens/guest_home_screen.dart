import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';
import 'package:home_hunter/screens/explore_screen.dart';
import 'package:home_hunter/screens/inbox_screen.dart';
import 'package:home_hunter/screens/profile_screen.dart';
import 'package:home_hunter/screens/saved_screen.dart';
import 'package:home_hunter/screens/trips_screen.dart';
import 'package:home_hunter/widgets/BNBWidget.dart';

class GuestHomePage extends StatefulWidget {
  static final routeName = '/Guest-Home-Screen';
  @override
  _GuestHomePageState createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {
  var _selectedIndex = 4;

  final List<Widget> _pages = [
    ExploreScreen(),
    SavedScreen(),
    TripsScreen(),
    InboxScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width / 1.7,
                  child: listTitles[_selectedIndex] == 'Explore'
                      ? TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : null),
            ],
          )
        ],
        title: Text(
          listTitles[_selectedIndex],
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        automaticallyImplyLeading: false,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: items.map((Item item) {
          return BottomNavigationBarItem(
              activeIcon: Icon(
                item.iconData,
                color: AppConstants.selectedIconColor,
              ),
              icon: Icon(
                item.iconData,
                color: AppConstants.nonselectedIconColor,
              ),
              title: Text(
                item.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _selectedIndex == item.index
                        ? AppConstants.selectedIconColor
                        : AppConstants.nonselectedIconColor),
              ));
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:home_hunter/models/AppConstants.dart';
import 'package:home_hunter/widgets/BNBWidget.dart';

class GuestHomePage extends StatefulWidget {
  static final routeName = '/Guest-Home-Screen';
  @override
  _GuestHomePageState createState() => _GuestHomePageState();
}

class _GuestHomePageState extends State<GuestHomePage> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
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

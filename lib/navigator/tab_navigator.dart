import 'package:abc/pages/home_page.dart';
import 'package:abc/pages/my_page.dart';
import 'package:abc/pages/search_page.dart';
import 'package:abc/pages/travel_page.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  const TabNavigator({super.key});

  @override
  State<TabNavigator> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  final PageController controller = PageController(initialPage: 0);
  int curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: <Widget>[HomePage(), SearchPage(), TravelPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            curIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: _activeColor,
              ),
              label: "首页",
              backgroundColor: curIndex != 0 ? _defaultColor : _activeColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.search,
                color: _activeColor,
              ),
              label: "搜索",
              backgroundColor: curIndex != 1 ? _defaultColor : _activeColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.camera_alt,
                color: _activeColor,
              ),
              label: "旅拍",
              backgroundColor: curIndex != 2 ? _defaultColor : _activeColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: _activeColor,
              ),
              label: "我的",
              backgroundColor: curIndex != 3 ? _defaultColor : _activeColor),
        ],
      ),
    );
  }
}

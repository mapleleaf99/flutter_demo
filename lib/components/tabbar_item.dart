import 'package:flutter/material.dart';

class TabbarItem extends BottomNavigationBarItem {
  TabbarItem(String iconName, String name) : super (
    icon: Image.asset("assets/images/tabbar/${iconName}_def.png", width: 25,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}_sel.png", width: 25,),
    label: name
  );
}
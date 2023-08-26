import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:zamili_app/controller/home_controller.dart';
import 'package:zamili_app/widget/colors_frave.dart';

class HomeBottonBar extends StatelessWidget {
  const HomeBottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (data) {
          return BottomNavigationBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            currentIndex: data.index,
            onTap: data.onPageChange,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            enableFeedback: true,
            type: BottomNavigationBarType.fixed,
            mouseCursor: MouseCursor.defer,
            useLegacyColorScheme: true,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(
              color: MyColors.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 12,
              height: 1.6,
            ),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 12,
              height: 1.6,
            ),
            selectedItemColor: MyColors.primaryColor,
            unselectedItemColor: null,
            elevation: 10,
            items: destinations2
                .map(
                  (e) => BottomNavigationBarItem(
                    icon: Icon(
                      e.icon,
                    ),
                    activeIcon: Icon(
                      e.selectIcon,
                    ),
                    label: e.text,
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

const destinations2 = <NavBtnClass>[
  NavBtnClass('Home', Ionicons.search_outline, Ionicons.search),
  NavBtnClass('My Order', Ionicons.card_outline, Ionicons.card),
  NavBtnClass(
    'Setting',
    Ionicons.person_circle_outline,
    Ionicons.person_circle,
  ),
];

class NavBtnClass {
  const NavBtnClass(this.text, this.icon, this.selectIcon);

  final IconData icon;
  final IconData selectIcon;
  final String text;
}

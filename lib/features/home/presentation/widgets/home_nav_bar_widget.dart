import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/view/home_view.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController _controller = PersistentTabController();

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      controller: _controller,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style12,
      backgroundColor: AppColors.primaryColor,
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeView(),
      const CartView(),
      const SearchView(),
      const ProfileView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppAssets.homeIconActive),
          inactiveIcon: SvgPicture.asset(AppAssets.homeIcon)),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppAssets.cartIconActive),
          inactiveIcon: SvgPicture.asset(AppAssets.cartIcon)),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppAssets.searchIconActive),
          inactiveIcon: SvgPicture.asset(AppAssets.searchIcon)),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(AppAssets.profileIconActive),
          inactiveIcon: SvgPicture.asset(AppAssets.profileIcon)),
    ];
  }
}

import 'package:emart/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'consts/colors.dart';
import 'consts/images.dart';
import 'consts/strings.dart';
import 'controler/home_controller.dart';
import 'screens/account_screen/accoutscreen.dart';
import 'screens/cart_screen/cartscreen.dart';
import 'screens/catagori_screen/catagoriscreen.dart';
import 'screens/homescreen/homescreen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbody = [
      const HomeScreen(),
      const CatagoriScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account)
    ];
    return Scaffold(
      body: Column(children: [
        Obx(
          () => Expanded(
              child: navbody.elementAt(controller.currentNavIndex.value)),
        )
      ]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          items: navbarItem,
          currentIndex: controller.currentNavIndex.value,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
        ),
      ),
    );
  }
}

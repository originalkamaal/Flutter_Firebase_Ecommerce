import 'package:get/get.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/controllers/home_controler.dart';
import 'package:myfirst_app/views/home_screen/account_screen.dart';
import 'package:myfirst_app/views/home_screen/cart_screen.dart';
import 'package:myfirst_app/views/home_screen/catagory_Screen.dart';
import 'package:myfirst_app/views/home_screen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItems = [
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
          label: cats),
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
          label: account),
    ];

    var navBody = [
      HomeScreen(),
      CatagoryScreen(),
      CartScreen(),
      AccountScreen()
    ];

    return Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value))),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            backgroundColor: whiteColor,
            items: navbarItems,
            onTap: (value) => {controller.currentNavIndex.value = value},
          ),
        ));
  }
}

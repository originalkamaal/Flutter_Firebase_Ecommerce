import 'package:get/get.dart';
import 'package:myfirst_app/consts/consts.dart';
import 'package:myfirst_app/widgets/common/applogo_widget.dart';
import '../auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Method to navigate to login or home screen
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            appLogoWidget(),
            const SizedBox(height: 20),
            appname.text.fontFamily(bold).size(22).white.make(),
          ],
        ),
      ),
    );
  }
}
